USE cargadb;


INSERT INTO usuario(idUsuario, Usuario, Password)
VALUES (1,'Freddy01','1234');

INSERT INTO usuario(idUsuario, Usuario, Password)
VALUES (2,'Hubner01','1234'),
(3,'Manuel01','1234'),(4,'Efrain01','1234'),(5,'Edith01','1234'),(6,'Carlos01','1234');

SELECT*FROM usuario;

INSERT INTO docente(idDocente,idUsuario,Nombre)
VALUES (1,1,'Freddy Barrientos'),(2,2,'Hubner Janampa'),
(3,3,'Manuel Lagos'),(4,4,'Efrain Porras'),(5,5,'Edith Guevara'),
(6,6,'Carlos Vila');

SELECT*FROM docente;

INSERT INTO semestreacademico(idSemestreAcademico, SemestreAcademico, Descripcion)
VALUES (1, '2019-I', 'Semestre Academico 2019-I'),(2, '2018-II', 'Semestre Academico 2018-II'),
(3, '2018-I', 'Semestre Academico 2018-I'),(4, '2017-II', 'Semestre Academico 2017-II'),
(5, '2017-I', 'Semestre Academico 2017-I');


SELECT*FROM semestreacademico;

INSERT INTO cargaacademica(NumHorasSemanales, idDocente, idSemestreAcademico)
VALUES (15,1,1),(14,2,1),(13,3,1),(12,4,1),(11,5,1),(10,6,1),(15,1,2),(14,2,2),
(13,3,2),(12,4,2),(11,5,2),(10,6,2),(15,1,3),(14,2,3),(13,3,3),(12,4,3),(11,5,3),
(10,6,3),(15,1,4),(14,2,4),(13,3,4),(12,4,4),(11,5,4),(10,6,4),(15,1,5),(14,2,5),
(13,3,5),(12,4,5),(11,5,5),(10,6,5);

SELECT*FROM cargaacademica;