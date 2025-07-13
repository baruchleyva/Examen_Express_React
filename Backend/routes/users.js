const express = require('express');
const router = express.Router();
const pool = require('../dbconexion');
const { body, param, query, validationResult } = require('express-validator');


//Listado de usuarios
router.get('/',[
    //Filtros para el listado de usuarios
    query('page').optional().isInt({min:1}),
    query('limit').optional().isInt({min:1}),
    query('role').optional().isString(),
    query('status').optional().isString(),
    query('search').optional().isString(),
], async (req, res) => {
    //Validacion de la informacion del request
    const errors = validationResult(req);
    if(!errors.isEmpty()) return res.status(400).json({errors: errors.array()});
    //Paginación y numero de usuarios limit
    const {page = 1, limit = 10, role, status, search} =req.query;
    const offset = (page - 1) * limit;
    //Consulta base para el listado
    let consultaBase = `SELECT * FROM public.usuarios WHERE 1=1`;
    const params = [];

    //Filtros para la busqueda
    //Por rol
    if(role){
        params.push(role);
        consultaBase += ` AND role = $${params.length}`;
    }
    //Por estatus
    if (status) {
      params.push(status);
      consultaBase += ` AND status = $${params.length}`;
    }
    //Por busqueda de nombre o email
    if (search) {
      params.push(`%${search}%`);
      consultaBase += ` AND (name ILIKE $${params.length} OR email ILIKE $${params.length})`;
    }
    //Limites para mostarr registros de la paginación.
    consultaBase += ` ORDER BY id LIMIT $${params.length + 1} OFFSET $${params.length + 2}`;
    params.push(limit, offset);
    //Retorno de la informacion o mensaje de error
    try {
      const result = await pool.query(consultaBase, params);
      res.json(result.rows);
    } catch (err) {
      res.status(500).json({ error: 'Error al obtener usuarios', detalle: err });
    }
});

//Usuario por id
router.get('/:id', async (req, res) => {
  const { id } = req.params;

  try {
    const result = await pool.query('SELECT * FROM public.usuarios WHERE id = $1', [id]);

    if (result.rows.length === 0) {
      return res.status(404).json({ error: 'Usuario no encontrado' });
    }

    res.json(result.rows[0]);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Error al obtener usuario', detalle: err });
  }
});

//Creacion de usuario
router.post('/',[
    //Validacion de datos
    body('first_name').notEmpty(),
    body('last_name').notEmpty(),
    body('email').notEmpty().withMessage('El correo es obligatorio').isEmail().withMessage('El correo no tiene un formato correcto.'),
    body('password').isLength({min:6}),
    body('role').optional().isIn(['Administrador','Usuario']),
    body('status').optional().isIn(['Activo','Inactivo']),

], async (req,res) =>{
    //Validacion de la informacion del request
    const errors = validationResult(req);
    if (!errors.isEmpty()) return res.status(400).json({ errors: errors.array() });

    const { first_name, last_name, email, password, phone_number, role = 'Usuario', status = 'Activo', address, profile_picture } = req.body;
    //Encriptacion de la contraseña
    const bcrypt = require('bcrypt');
    const hashed = await bcrypt.hash(password, 10);
    //Insercion de la informacion en la base de datos 
    try {
      const result = await pool.query(
        'INSERT INTO public.usuarios(first_name, last_name, email, password, phone_number, role, status, address, profile_picture)	VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING *',
        [first_name, last_name, email, hashed, phone_number, role, status, address, profile_picture]
      );
      res.status(201).json(result.rows[0]);
    } catch (err) {
      res.status(500).json({ error: 'Error al crear usuario', detalle: err });
    }
});

//Actualizacion del usuario
router.put('/:id', [
    //Validacion de los datos
    param('id').isInt(),
    body('first_name').optional().notEmpty(),
    body('last_name').optional().notEmpty(),
    body('email').optional().notEmpty().withMessage('El correo es obligatorio').isEmail().withMessage('El correo no tiene un formato correcto.'),
    body('password').optional().isLength({ min: 6 }),
    body('role').optional().isIn(['Administrador', 'Usuario']),
    body('status').optional().isIn(['Activo', 'Inactivo']),
  ],
  async (req, res) => {
    //Validacion de la informacion del request
    const errors = validationResult(req);
    if (!errors.isEmpty()) return res.status(400).json({ errors: errors.array() });

    const { id } = req.params;
    const { first_name, last_name, email, password, phone_number, role = 'Usuario', status = 'Activo', address, profile_picture  } = req.body;
    //Si hay datos para actualziar se agregan 
    let updates = [];
    let params = [];
    if (first_name) updates.push(`first_name = $${params.push(first_name)}`);
    if (last_name) updates.push(`last_name = $${params.push(last_name)}`);
    if (email) updates.push(`email = $${params.push(email)}`);
    if (phone_number) updates.push(`phone_number = $${params.push(phone_number)}`);
    if (role) updates.push(`role = $${params.push(role)}`);
    if (status) updates.push(`status = $${params.push(status)}`);
    if (address) updates.push(`address = $${params.push(address)}`);
    if (profile_picture) updates.push(`profile_picture = $${params.push(profile_picture)}`);
    if (password) {
      const bcrypt = require('bcrypt');
      const hashed = await bcrypt.hash(password, 10);
      updates.push(`password = $${params.push(hashed)}`);
    }

    if (updates.length === 0) return res.status(400).json({ error: 'No hay campos para actualizar' });
    //Se actualiza la información o no y se informa 
    try {
      const result = await pool.query(
        `UPDATE public.usuarios SET ${updates.join(', ')} WHERE id = $${params.length + 1} RETURNING *`,
        [...params, id]
      );
      if (result.rowCount === 0) return res.status(404).json({ error: 'Usuario no encontrado' });
      res.json(result.rows[0]);
    } catch (err) {
      res.status(500).json({ error: 'Error al actualizar usuario', detalle: err });
    }
});

//Eliminacion de usuario
router.delete('/:id', [param('id').isInt()], async (req, res) => {
    //Validacion de la informacion del request
    const errors = validationResult(req);
    if (!errors.isEmpty()) return res.status(400).json({ errors: errors.array() });

    const { id } = req.params;
    //Eliminacion del usuario por id o mensaje de error
    try {
      const result = await pool.query(`DELETE FROM public.usuarios WHERE id = $1 RETURNING *`, [id]);
      if (result.rowCount === 0) return res.status(404).json({ error: 'Usuario no encontrado' });
      res.json({ mensaje: 'Usuario eliminado' });
    } catch (err) {
      res.status(500).json({ error: 'Error al eliminar usuario', detalle: err });
    }
});

module.exports = router;