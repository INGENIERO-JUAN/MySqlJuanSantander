DROP DATABASE IF EXISTS
 hoja_de_vida;

drop schema IF EXISTS hoja_de_vida;
create schema  hoja_de_vida;
use hoja_de_vida;


create table pais(

idpais int primary key auto_increment,
pais varchar(30) NOT NULL

);


create table  departamento(

iddepartamento int primary key auto_increment,
departamento varchar(30)  NOT NULL,
idpais int,

foreign key(idpais) references pais (idpais)
);

create table ciudad(

idciudad int primary key auto_increment,
ciudad varchar(40) NOT NULL,
iddepartamento int,
foreign key(iddepartamento) references departamento (iddepartamento)

);

create table empresa(

idempresa int primary key auto_increment,
nit int NOT NULL,
idcontrato int
);

create table cargo(

idcargo int primary key auto_increment,
cargo varchar(40) NOT NULL,
descripcion varchar (50)
);

create table empresa_cargo(

idempresa_cargo int primary key auto_increment,
idempresa int NOT NULL,
idcargo int,
foreign key(idempresa) references empresa (idempresa),
foreign key(idcargo) references cargo (idcargo)
);

create table tipo_contrato(

idtipo_contrato int primary key auto_increment,
tipo_contrato varchar(20) NOT NULL
 
);
create table contrato(

idcontrato int primary key auto_increment,
codigo_contrato int NOT NULL,
idtipo_contrato int,
foreign key(idtipo_contrato) references tipo_contrato(idtipo_contrato)
);

create table tipo_documento(

idtipo_documento int primary key auto_increment,
tipo_documento int NOT NULL
);

create table genero(

idgenero int primary key auto_increment,
genero varchar(20) NOT NULL
);
create table tipo_libreta(

idtipo_libreta int primary key auto_increment,
tipo_libreta int NOT NULL

);

create table rh(

idrh int primary key auto_increment,
rh varchar (4) NOT NULL
);
create table institucion(

idinstitucion int primary key auto_increment,
nit int NOT NULL,
institucion int
);
create table referencia_personal(

idreferencia_personal int primary key auto_increment,
telefono varchar (20) NOT NULL,
mail varchar(20)
);
create table persona(

idpersona int primary key auto_increment unique key,
nombre1 varchar(10) NOT NULL,
nombre2 varchar(10),
apellido1 varchar(10) NOT NULL,
apellido2 varchar(10),
documento int NOT NULL,
idtipo_documento int,
mail varchar (20),
direccion varchar (20),
telefono varchar (20),
idgenero int,
fecha_nac date,
libreta_militar varchar (10),
idtipo_libreta int,
idrh int,
idciudad int,
idinstitucion int,

foreign key(idtipo_documento) references tipo_documento(idtipo_documento),
foreign key(idgenero) references genero(idgenero),
foreign key(idtipo_libreta) references tipo_libreta(idtipo_libreta),
foreign key(idtipo_documento) references tipo_documento(idtipo_documento),
foreign key(idrh) references rh (idrh),
foreign key(idciudad) references ciudad(idciudad),
foreign key(idinstitucion) references institucion(idinstitucion)

);

create table persona_referencia(

idpersona_referencia int primary key auto_increment,
idreferencia_personal int NOT NULL,
idpersona int,

foreign key(idreferencia_personal) references referencia_personal(idreferencia_personal),
foreign key(idpersona) references persona(idpersona)

);

create table institucion_persona(

idinstitucion_persona int primary key auto_increment,
idinstitucion int NOT NULL,
idpersona int,

foreign key(idinstitucion) references institucion(idinstitucion),
foreign key(idpersona) references persona(idpersona)

);

