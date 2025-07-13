import { useEffect, useState } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import axios from 'axios';
import AutocompleteAddress from '../components/AutocompleteAddress';

function EditarUsuario() {
    const { id } = useParams();
    const navigate = useNavigate();
    const token = localStorage.getItem('token');

    const [formData, setFormData] = useState({
        first_name: '',
        last_name: '',
        email: '',
        password: '',
        phone_number: '',
        role: 'Usuario',
        status: 'Activo',
        calle: '',
        numero: '',
        ciudad: '',
        codigoPostal: ''
    });

    const [mensaje, setMensaje] = useState('');

    useEffect(() => {
    const obtenerUsuario = async () => {
        //Se obtiene la informacion del usuario mediante el endpoint por id
        try {
            const res = await axios.get(`http://localhost:3000/users/${id}`, {
            headers: { Authorization: `Bearer ${token}` }
            });

            const user = res.data;

            setFormData({
                first_name: user.first_name,
                last_name: user.last_name,
                email: user.email,
                password: '', 
                phone_number: user.phone_number,
                role: user.role,
                status: user.status,
                calle: user.address?.calle || '',
                numero: user.address?.numero || '',
                ciudad: user.address?.ciudad || '',
                codigoPostal: user.address?.codigoPostal || ''
            });
        } catch (err) {
            console.error(err);
            setMensaje('Error al cargar usuario');
        }
    };

        obtenerUsuario();
    }, [id]);
    //para la seleccion del input que usa la api de google
    const handleChange = (e) => {
        setFormData(prev => ({
        ...prev,
        [e.target.name]: e.target.value
        }));
    };
    
    const handlePlaceSelected = ({ calle, numero, ciudad, codigoPostal }) => {
        setFormData(prev => ({
        ...prev,
        calle,
        numero,
        ciudad,
        codigoPostal
        }));
    };

    const handleSubmit = async (e) => {
        e.preventDefault();
        //Se envia la informacion al endpoint para actualizar el usuario y regresa al dashboars si es correcto
        try {
        const body = {
            ...formData,
            address: 
            {
                calle: formData.calle,
                numero: formData.numero,
                ciudad: formData.ciudad,
                codigo_postal: formData.codigoPostal
            }
        };


        const res = await axios.put(`http://localhost:3000/users/${id}`, body, {
            headers: {
            Authorization: `Bearer ${token}`
            }
        });

        setMensaje('Usuario actualizado');
        setTimeout(() => navigate('/dashboard'), 1500);
        } catch (err) {
        console.error(err);
        setMensaje('Error al actualizar usuario');
        }
    };
    //parte visual
    return (
        <div style={{ padding: '2rem' }}>
        <h2>Editar usuario</h2>
        {mensaje && <p>{mensaje}</p>}
        
        <form onSubmit={handleSubmit}>
            <input name="first_name" value={formData.first_name} onChange={handleChange} placeholder="Nombre" />
            <input name="last_name" value={formData.last_name} onChange={handleChange} placeholder="Apellido" />
            <input name="email" value={formData.email} onChange={handleChange} placeholder="Correo" />
            <input name="password" value={formData.password} onChange={handleChange} placeholder="Contraseña" />
            <input name="phone_number" value={formData.phone_number} onChange={handleChange} placeholder="Teléfono" />

            <select name="role" value={formData.role} onChange={handleChange}>
            <option value="Administrador">Administrador</option>
            <option value="Usuario">Usuario</option>
            </select>

            <select name="status" value={formData.status} onChange={handleChange}>
            <option value="Activo">Activo</option>
            <option value="Inactivo">Inactivo</option>
            </select>

            <AutocompleteAddress onPlaceSelected={handlePlaceSelected} />

            <input name="calle" value={formData.calle} onChange={handleChange} placeholder="Calle" />
            <input name="numero" value={formData.numero} onChange={handleChange} placeholder="Número" />
            <input name="ciudad" value={formData.ciudad} onChange={handleChange} placeholder="Ciudad" />
            <input name="codigoPostal" value={formData.codigoPostal} onChange={handleChange} placeholder="Código Postal" />

            <button type="submit">Guardar cambios</button>
        </form>
        </div>
    );
}

export default EditarUsuario;
