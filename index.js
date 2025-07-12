require('dotenv').config();

const express = require('express');
const cors = require('cors');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const pool = require('./dbconexion');

const app = express();
app.use(cors());
app.use(express.json());

//Palabra Secreta
const JWT = process.env.JWT;

//Ruta para registrar un nuevo usuario
app.post('/registrar', async (req, res) => {
    const {first_name, last_name, email, password, phone_number, role, status, address, profile_picture } = req.body;
    const hash = await bcrypt.hash(password, 10);
    try{
        await pool.query('INSERT INTO public.usuarios(first_name, last_name, email, password, phone_number, role, status, address, profile_picture)	VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)',[first_name, last_name, email, hash, phone_number, role, status, address, profile_picture]);
        res.status(201).json({message:'Usuario registrado correctamente'});
    } catch (err){
        res.status(500).json({error:'Error al registrar'});
    }
});

//Ruta para iniciar sesion, login.
app.post('/login', async (req, res) => {
    const {first_name, last_name, email, password, phone_number, role, status, address, profile_picture } = req.body;
    const resultado = await pool.query('SELECT * FROM public.usuarios WHERE email = $1', [email]);
    const usuario = resultado.rows[0];

    if(!usuario) return res.status(401).json({error: 'Usuario no encontrado'});

    const validar = await bcrypt.compare(password, usuario.password);
    if(!validar) return res.status(401).json({error: 'Contraseña incorrecta'});

    const token = jwt.sign({ id: usuario.id, email: usuario.email}, JWT, {expiresIn: '1h'});
    res.json({token});
        
});

app.get('/',(req,res)=>{
    res.send('Hola :) ...');
});

app.listen(3000,() => {
    console.log('Servidor levantado');
} );
