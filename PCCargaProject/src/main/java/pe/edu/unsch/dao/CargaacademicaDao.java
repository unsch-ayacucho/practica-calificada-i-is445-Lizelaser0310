package pe.edu.unsch.dao;
import java.util.List;

import pe.edu.unsch.entities.Cargaacademica;


public interface CargaacademicaDao {
	
	public List<Cargaacademica> listar(String usuario);
	public List<Cargaacademica> encontrarTodo();
	public void insertar(Cargaacademica cargaacademica);
}
