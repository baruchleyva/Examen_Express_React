import { useState } from 'react';
import axios from 'axios';
import AutocompleteAddress from '../components/AutocompleteAddress';

function NuevoUsuario() {
    //formato inicial de los elementos de la pagina
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

    //const [fotoPerfil, setFotoPerfil] = useState(null);
    const [mensaje, setMensaje] = useState('');

    const token = localStorage.getItem('token');

    const handleChange = (e) => {
    setFormData(prev => ({
        ...prev,
        [e.target.name]: e.target.value
    }));
    };

    /*const handleFileChange = (e) => {
    setFotoPerfil(e.target.files[0]);
    };*/

    const handleSubmit = async (e) => {
        e.preventDefault();

        if (!formData.first_name || !formData.last_name || !formData.email || !formData.password) {
            setMensaje('Nombre, apellido, correo y contraseña son obligatorios');
            return;
        }

        try {
            //const data = new FormData();

            /*for (const key in formData) {
                data.append(key, formData[key]);
            }
            if (fotoPerfil) {
                data.append('profile_picture', fotoPerfil);
            }
            data.append('address', direccionCompleta);*/

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
            //se envia la peticion para crear el usuario
            const response = await axios.post('http://localhost:3000/users', body, {
                headers: {
                //'Content-Type': 'multipart/form-data', // marca error
                Authorization: `Bearer ${token}`
                }
            });

            setMensaje('Usuario creado correctamente');
            setFormData({
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
        } catch (error) {

            console.error('Error al guardar el usuario:', error.response?.data || error);
            setMensaje('Error al guardar el usuario');

            //console.error(error);
            //setMensaje('Error al guardar el usuario');
            //<h4>Foto de perfil</h4>
            //<input type="file" accept="image/*" onChange={handleFileChange} />
        }
    };

    //para la seleccion del input que usa la api de google
    const handlePlaceSelected = ({ calle, numero, ciudad, codigoPostal }) => {
        setFormData(prev => ({
        ...prev,
        calle,
        numero,
        ciudad,
        codigoPostal
        }));
    };

    //parte visual 
    return (
    <div style={{ padding: '2rem', maxWidth: '600px', margin: 'auto' }}>
      <h2>Agregar nuevo usuario</h2>
      {mensaje && <p>{mensaje}</p>}

      <form onSubmit={handleSubmit} encType="multipart/form-data">
        <input name="first_name" placeholder="Nombre" value={formData.first_name} onChange={handleChange} required />
        <input name="last_name" placeholder="Apellido" value={formData.last_name} onChange={handleChange} required />
        <input name="email" placeholder="Correo electrónico" value={formData.email} onChange={handleChange} required />
        <input name="password" placeholder="Contraseña" value={formData.password} onChange={handleChange} required />
        <input name="phone_number" placeholder="Número de teléfono" value={formData.phone_number} onChange={handleChange} />

        <select name="role" value={formData.role} onChange={handleChange}>
          <option value="Administrador">Administrador</option>
          <option value="Usuario">Usuario</option>
        </select>

        <select name="status" value={formData.status} onChange={handleChange}>
          <option value="Activo">Activo</option>
          <option value="Inactivo">Inactivo</option>
        </select>

        <h4>Dirección</h4>
        <AutocompleteAddress onPlaceSelected={handlePlaceSelected} />

        {/* Los inputs de calle, número, ciudad, código postal se llenan automáticamente con la API de google */}
        <input name="calle" value={formData.calle} onChange={handleChange} placeholder="Calle" />
        <input name="numero" value={formData.numero} onChange={handleChange} placeholder="Número" />
        <input name="ciudad" value={formData.ciudad} onChange={handleChange} placeholder="Ciudad" />
        <input name="codigoPostal" value={formData.codigoPostal} onChange={handleChange} placeholder="Código Postal" />

        <br /><br />
        <button type="submit">Guardar usuario</button>
      </form>
    </div>
  );
}

export default NuevoUsuario;
