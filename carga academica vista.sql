
USE cargadb;

select docente.Nombre, semestreacademico.SemestreAcademico, cargaacademica.NumHorasSemanales
FROM cargaacademica JOIN docente ON cargaacademica.idDocente=docente.idDocente
JOIN semestreacademico ON cargaacademica.idSemestreAcademico=semestreacademico.idSemestreAcademico;