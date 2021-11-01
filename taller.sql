drop database if exists taller;
create database taller;
use taller;


create table locales(
id int auto_increment primary key,
direccion varchar(80),
numeracion int,
localidad varchar(80),
provicia varchar(80),
nom_suc varchar(80),
tel int,
mail varchar (80) default 'Desconocido',
comentarios varchar(80)
);

create table  clientes(
  id int auto_increment primary key,
  nombre varchar(80) not null,
  apellido varchar(80) default 'Desconocido',
  mail varchar (80) default 'Desconocido',
  Direccion varchar(80),
  tel int,
  comentarios varchar(80)
);
create table  usuarios(
  id int auto_increment primary key,
  nombre varchar(80) not null,
  apellido varchar(80) default 'Desconocido',
  mail varchar(80) default 'Desconocido',
  Direccion varchar(80),
  comentarios varchar(80)
  
);

create table equipos(
id int auto_increment primary key,
tipo enum('CELULAR','TABLETA','DESKTOP','NOTEBOOK','CONSOLA','OTROS'),
n_serie int ,
marca varchar(80),
comentarios varchar(80)
);


create table repuestos(
id int auto_increment primary key,
tipo varchar(80),
n_serie int ,
marca varchar(80),
comentarios varchar(80), 
precio double
);

create table remitos(
id int auto_increment primary key,
falla varchar(120),
estado enum ('A PRESUPUESTAR','REPARADO','SIN REPARACION','ESPERANDO CONFIRMACION','CONFIRMADO'),
precio double,
fecha date,
id_usuario int not null,
id_cliente int not null,
id_equipo int not null,
id_repuesto int not null,
foreign key (id_cliente) references clientes,
foreign key (id_equipo) references equipos,
foreign key (id_usuario) references usuarios,
foreign key (id_repuesto) references repuestos

);


