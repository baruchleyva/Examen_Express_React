import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Login from './pages/Login';
import Dashboard from './pages/Dashboard';
import NuevoUsuario from './pages/NuevoUsuario';
import EditarUsuario from './pages/EditarUsuario';
import ValidarToken from './components/ValidarToken';

function App() {
  //Rutas para el login, el dashboard, nuevo usuario y editar usuario
  return (
    <div className="App">
      <BrowserRouter>
        <Routes> 
          <Route path='/' element={<Login />} />
          <Route path='/dashboard' element={
            <ValidarToken>
              <Dashboard />
            </ValidarToken>
          } />
          <Route path="/usuarios/nuevo" element={
            <ValidarToken>
              <NuevoUsuario />
            </ValidarToken>
          } />
          <Route path="/usuario/:id/editar" element={
            <ValidarToken>
              <EditarUsuario />
            </ValidarToken>
          } />
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
