import { useEffect, useState } from 'react';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';


function Dashboard() {
  const [usuarios, setUsuarios] = useState([]);
  const [loading, setLoading] = useState(false);

  // filtros
  const [search, setSearch] = useState('');
  const [role, setRole] = useState('');
  const [status, setStatus] = useState('');
  const [page, setPage] = useState(1);

  const token = localStorage.getItem('token');
// se traen los usuarios que se tienen en el endpoint de la lista con paginación
  const fetchUsuarios = async () => {
    setLoading(true);
    try {
      const params = {
        page,
        limit: 10,
        search,
        role,
        status,
      };

      const response = await axios.get('http://localhost:3000/users', {
        params,
        headers: {
          Authorization: `Bearer ${token}`
        }
      });

      setUsuarios(response.data);
    } catch (error) {
      console.error('Error al obtener usuarios:', error);
    } finally {
      setLoading(false);
    }
  };
  
  useEffect(() => {
    fetchUsuarios();
  }, [search, role, status, page]);
 // implementacion de enpoint de eliminacion de usuarios por id
  const handleDelete = (id) => {
    if (!window.confirm("¿Estás seguro de eliminar este usuario?")) return;

    axios.delete(`http://localhost:3000/users/${id}`, {
      headers: {
        Authorization: `Bearer ${token}`
      }
    })
    .then(() => {
      fetchUsuarios();
    })
    .catch(err => {
      console.error("Error al eliminar:", err);
    });
  };

  //para el boton de nuevo usuario
  const navigate = useNavigate();
  const irANuevoUsuario = () => {
    navigate('/usuarios/nuevo');
  };

  //parte visual estructura html
  return (
    <div style={{ padding: "2rem" }}>
      <h2>Panel de Usuarios</h2>

      {/* Filtros y búsqueda */}
      <div style={{ marginBottom: "1rem" }}>
        <input
          type="text"
          placeholder="Buscar por nombre o email"
          value={search}
          onChange={(e) => setSearch(e.target.value)}
        />

        <select value={role} onChange={(e) => setRole(e.target.value)} style={{ marginLeft: 10 }}>
          <option value="">Todos los roles</option>
          <option value="Administrador">Administrador</option>
          <option value="Usuario">Usuario</option>
        </select>

        <select value={status} onChange={(e) => setStatus(e.target.value)} style={{ marginLeft: 10 }}>
          <option value="">Todos los estados</option>
          <option value="Activo">Activo</option>
          <option value="Inactivo">Inactivo</option>
        </select>
        <button onClick={irANuevoUsuario} style={{ marginBottom: '1rem' }}>
           Agregar usuario
        </button>
      </div>

      {/* Tabla de usuarios con paginacion */}
      {loading ? (
        <p>Cargando usuarios...</p>
      ) : (
        <table border="1" cellPadding="10" style={{ width: "100%", textAlign: "left" }}>
          <thead>
            <tr>
              <th>Nombre</th>
              <th>Apellido</th>
              <th>Correo electrónico</th>
              <th>Teléfono</th>
              <th>Rol</th>
              <th>Estado</th>
              <th>Acciones</th>
            </tr>
          </thead>
          <tbody>
            {usuarios.length > 0 ? (
              usuarios.map(user => (
                <tr key={user.id}>
                  <td>{user.first_name}</td>
                  <td>{user.last_name}</td>
                  <td>{user.email}</td>
                  <td>{user.phone_number || '—'}</td>
                  <td>{user.role}</td>
                  <td>{user.status}</td>
                  <td>
                    <button onClick={() => navigate(`/usuario/${user.id}/editar`)}>Editar</button>
                    <button onClick={() => handleDelete(user.id)} style={{ marginLeft: 5 }}>Eliminar</button>
                  </td>
                </tr>
              ))
            ) : (
              <tr>
                <td colSpan="6">No se encontraron usuarios.</td>
              </tr>
            )}
          </tbody>
        </table>
      )}

      {/* Paginación */}
      <div style={{ marginTop: "1rem" }}>
        <button onClick={() => setPage(prev => Math.max(prev - 1, 1))} disabled={page === 1}> Anterior
        </button>
        <span style={{ margin: '0 10px' }}>Página {page}</span>
        <button onClick={() => setPage(prev => prev + 1)}>Siguiente</button>
      </div>
    </div>
  );
}

export default Dashboard;
