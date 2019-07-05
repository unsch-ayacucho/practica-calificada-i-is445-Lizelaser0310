package pe.edu.unsch.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import pe.edu.unsch.entities.Cargaacademica;


@Repository("cargaacademicaDao")
public class CargaAcademicaImpl implements CargaacademicaDao {
	
	@PersistenceContext
	private EntityManager entityManager;
	@Override
	public List<Cargaacademica> listar(String usuario) {
	return (List<Cargaacademica>) entityManager
			.createQuery("select new Cargaacademica(docente.Nombre, semestreacademico.SemestreAcademico, cargaacademica.NumHorasSemanales)"
					+ "from cargaacademica "
					+ "JOIN docente"
					+ "ON cargaacademica.idDocente=docente.idDocente"
					+ "JOIN semestreacademico"
					+ "ON cargaacademica.idSemestreAcademico=semestreacademico.idSemestreAcademico", Cargaacademica.class)
	.setParameter("usuario", usuario)
	.getResultList();
}
	
			
			@Override
			public List<Cargaacademica> encontrarTodo() {
				return entityManager
						.createQuery("from Cargaacademica", Cargaacademica.class)
						.getResultList();

			}

			@Override
			public void insertar(Cargaacademica cargaacademica) {
				entityManager.persist(cargaacademica);
				
			}
}
