DROP DATABASE IF EXISTS hojaDevida;

DROP SCHEMA IF EXISTS hojaDeVida;
CREATE SCHEMA hojaDeVida;
USE hojaDeVida;

CREATE TABLE country(
    idCountry INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL
);

CREATE TABLE department(
    idDepartment INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL,
    idCountry INT,
    FOREIGN KEY(idCountry) REFERENCES country(idCountry)
);

CREATE TABLE city(
    idCity INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(40) NOT NULL,
    idDepartment INT,
    FOREIGN KEY(idDepartment) REFERENCES department(idDepartment)
);

CREATE TABLE company(
    idCompany INT PRIMARY KEY AUTO_INCREMENT,
    taxId INT NOT NULL,
    idContract INT
);

CREATE TABLE jobPosition(
    idPosition INT PRIMARY KEY AUTO_INCREMENT,
    positionName VARCHAR(40) NOT NULL,
    description VARCHAR(50)
);

CREATE TABLE companyPosition(
    idCompanyPosition INT PRIMARY KEY AUTO_INCREMENT,
    idCompany INT NOT NULL,
    idPosition INT,
    FOREIGN KEY(idCompany) REFERENCES company(idCompany),
    FOREIGN KEY(idPosition) REFERENCES jobPosition(idPosition)
);

CREATE TABLE contractType(
    idContractType INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL
);

CREATE TABLE contract(
    idContract INT PRIMARY KEY AUTO_INCREMENT,
    contractCode INT NOT NULL,
    idContractType INT,
    FOREIGN KEY(idContractType) REFERENCES contractType(idContractType)
);

CREATE TABLE documentType(
    idDocumentType INT PRIMARY KEY AUTO_INCREMENT,
    `name` INT NOT NULL
);

CREATE TABLE gender(
    idGender INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL
);

CREATE TABLE militaryBookletType(
    idMilitaryBookletType INT PRIMARY KEY AUTO_INCREMENT,
    `name` INT NOT NULL
);

CREATE TABLE bloodType(
    idBloodType INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(4) NOT NULL
);

CREATE TABLE institution(
    idInstitution INT PRIMARY KEY AUTO_INCREMENT,
    taxId INT NOT NULL,
    institutionName INT
);

CREATE TABLE personalReference(
    idPersonalReference INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(20)
);

CREATE TABLE person(
    idPerson INT PRIMARY KEY AUTO_INCREMENT UNIQUE KEY,
    firstName VARCHAR(10) NOT NULL,
    middleName VARCHAR(10),
    lastName VARCHAR(10) NOT NULL,
    secondLastName VARCHAR(10),
    document INT NOT NULL,
    idDocumentType INT,
    email VARCHAR(20),
    address VARCHAR(20),
    phone VARCHAR(20),
    idGender INT,
    birthDate DATE,
    militaryBooklet VARCHAR(10),
    idMilitaryBookletType INT,
    idBloodType INT,
    idCity INT,
    idInstitution INT,
    FOREIGN KEY(idDocumentType) REFERENCES documentType(idDocumentType),
    FOREIGN KEY(idGender) REFERENCES gender(idGender),
    FOREIGN KEY(idMilitaryBookletType) REFERENCES militaryBookletType(idMilitaryBookletType),
    FOREIGN KEY(idBloodType) REFERENCES bloodType(idBloodType),
    FOREIGN KEY(idCity) REFERENCES city(idCity),
    FOREIGN KEY(idInstitution) REFERENCES institution(idInstitution)
);

CREATE TABLE personReference(
    idPersonReference INT PRIMARY KEY AUTO_INCREMENT,
    idPersonalReference INT NOT NULL,
    idPerson INT,
    FOREIGN KEY(idPersonalReference) REFERENCES personalReference(idPersonalReference),
    FOREIGN KEY(idPerson) REFERENCES person(idPerson)
);

CREATE TABLE institutionPerson(
    idInstitutionPerson INT PRIMARY KEY AUTO_INCREMENT,
    idInstitution INT NOT NULL,
    idPerson INT,
    FOREIGN KEY(idInstitution) REFERENCES institution(idInstitution),
    FOREIGN KEY(idPerson) REFERENCES person(idPerson)
);
