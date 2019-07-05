
USE cargadb;


CREATE TABLE Usuario (
  idUsuario INT NOT NULL,
  Usuario VARCHAR(45) NOT NULL,
  Password VARCHAR(45) NOT NULL,
  PRIMARY KEY (idUsuario))
;


CREATE TABLE Docente (
  idDocente INT NOT NULL,
  idUsuario INT NOT NULL,
  Nombre VARCHAR(45) NOT NULL,
  PRIMARY KEY (idDocente),
  CONSTRAINT FK_Docente_Usuario
    FOREIGN KEY (idUsuario)
    REFERENCES Usuario(idUsuario)
);


CREATE TABLE SemestreAcademico(
  idSemestreAcademico INT NOT NULL,
  SemestreAcademico VARCHAR(45) NOT NULL,
  Descripcion VARCHAR(45) NULL,
  PRIMARY KEY (idSemestreAcademico)
  );

CREATE TABLE CargaAcademica (
  idCargaAcademica INT NOT NULL AUTO_INCREMENT,
  NumHorasSemanales INT NOT NULL,
  idDocente INT NOT NULL,
  idSemestreAcademico INT NOT NULL,
  PRIMARY KEY (idCargaAcademica),
  CONSTRAINT fk_CargaAcademica_Docente
    FOREIGN KEY (idDocente)
    REFERENCES Docente(idDocente),
  CONSTRAINT FK_CargaAcademica_SemestreAcademico
    FOREIGN KEY (idSemestreAcademico)
    REFERENCES SemestreAcademico(idSemestreAcademico)
    );
    


