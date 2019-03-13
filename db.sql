#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Groupe
#------------------------------------------------------------

CREATE TABLE Groupe(
        id_groupe  Int NOT NULL ,
        nom_groupe Char (5) NOT NULL
	,CONSTRAINT Groupe_PK PRIMARY KEY (id_groupe)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Promo
#------------------------------------------------------------

CREATE TABLE Promo(
        id_promo  Int NOT NULL ,
        nom_promo Char (50) NOT NULL ,
        cycle     Char (5) NOT NULL
	,CONSTRAINT Promo_PK PRIMARY KEY (id_promo)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Etudiant
#------------------------------------------------------------

CREATE TABLE Etudiant(
        Matricule Varchar (50) NOT NULL ,
        Nom       Char (50) NOT NULL ,
        Prenom    Char (50) NOT NULL ,
        Statut    Char (50) NOT NULL ,
        id_promo  Int NOT NULL ,
        id_groupe Int NOT NULL
	,CONSTRAINT Etudiant_PK PRIMARY KEY (Matricule)

	,CONSTRAINT Etudiant_Promo_FK FOREIGN KEY (id_promo) REFERENCES Promo(id_promo)
	,CONSTRAINT Etudiant_Groupe0_FK FOREIGN KEY (id_groupe) REFERENCES Groupe(id_groupe)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Module
#------------------------------------------------------------

CREATE TABLE Module(
        id_module  Int NOT NULL ,
        nom_module Char (50) NOT NULL ,
        id_promo   Int NOT NULL
	,CONSTRAINT Module_PK PRIMARY KEY (id_module)

	,CONSTRAINT Module_Promo_FK FOREIGN KEY (id_promo) REFERENCES Promo(id_promo)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Concerne
#------------------------------------------------------------

CREATE TABLE Concerne(
        id_module Int NOT NULL ,
        Matricule Varchar (50) NOT NULL
	,CONSTRAINT Concerne_PK PRIMARY KEY (id_module,Matricule)

	,CONSTRAINT Concerne_Module_FK FOREIGN KEY (id_module) REFERENCES Module(id_module)
	,CONSTRAINT Concerne_Etudiant0_FK FOREIGN KEY (Matricule) REFERENCES Etudiant(Matricule)
)ENGINE=InnoDB;

