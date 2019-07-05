package pe.edu.unsch.service;

import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.unsch.dao.CargaacademicaDao;
import pe.edu.unsch.entities.Cargaacademica;

@Service("cargaacademicaService")
@Transactional
public class CargaacademicaServiceImpl implements CargaacademicaService {

	@Autowired
	private CargaacademicaDao cargaacademicaDao;
	
	@Override
	public List<Cargaacademica> listar(String usuario) {
	return cargaacademicaDao.listar(usuario);
	}

}
