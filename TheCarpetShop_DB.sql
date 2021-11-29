Create Database TheCarpetShop_DB
go
Use TheCarpetShop_DB
GO
Create table Datos(
	ID int identity (1,1),
	Nombres varchar(100) not null,
	Apellidos varchar(100) not null,
	DNI int not null,
	Sexo varchar(20) not null,
	primary key (ID),
)
GO
Create table Direccion(
	ID int identity (1,1),
	CP int not null,
	Calle varchar(60) not null,
	Altura int not null,
	Piso int,
	Localidad varchar(60) not null,
	primary key (ID),
)
GO
Create table Usuario(
	ID int identity (1,1),
	Alias varchar(60) not null,
	Mail varchar(100) not null,
	Password varchar(100) not null,
	IdDatos int,
	IdDireccion int,
	Primary key (ID),
	foreign key (IdDatos) references Datos(ID),
	foreign key (IdDireccion) references Direccion(ID)
)
GO
Create table Marca(
	ID int identity (1,1),
	Descripcion varchar(100) not null,
	primary key (ID)
)
GO
Create table Categoria(
	ID int identity (1,1),
	Descripcion varchar(100) not null,
	primary key (ID)
)
GO
Create table Imagen(
	ID int identity (1,1),
	Descripcion varchar(100),
	Link varchar(8000) not null,
	primary key (ID)
)
GO
Create table Producto(
	ID int identity (1,1),
	Codigo varchar(10) not null,
	Nombre varchar(60) not null,
	Descripcion varchar(500),
	IdMarca int,
	IdCategoria int,
	IdImagen int,
	Precio money not null check (Precio > 0),
	Cantidad decimal not null check (Cantidad > 0),
	Primary key (ID),
	foreign key (IdMarca) references Marca(ID),
	foreign key (IdCategoria) references Categoria(ID),
	foreign key (IdImagen) references Imagen(ID),
)
GO
Create table Estado(
	ID int identity (1,1),
	Descripcion varchar(100) not null,
	Primary Key (ID)
)
GO
Create table Pedido(
	ID int identity (1,1),
	IdUsuario int,
	IdEstado int,
	--IdDetalle int identity (1,1),
	Primary key(ID),
	Foreign key (IdUsuario) references Usuario(ID),
	Foreign key (IdEstado) references Estado(ID),
	--Foreign key (IdDetalle) references Detalle(ID)
)
GO
Create table Detalle(
	ID int identity (1,1),
	--La columna ID no es necesaria
	IdPedido int,
	idProducto int,
	Cantidad decimal not null check (Cantidad > 0),
	Primary key (IdPedido, IdProducto),
	Foreign key (IdPedido) references Pedido(ID),
	Foreign key (IdProducto) references Producto(ID)
)
GO

insert into Marca (Descripcion) values ('1')
GO
insert into Categoria (Descripcion) values ('Categoria 1')
GO
insert into Imagen(Descripcion, Link) values ('Imagen 1', 'Content/Images/Image1.png')
GO
insert into Estado(Descripcion)		values ('Estado 1')
GO
insert into Datos		values ('Nombre1 Nombre2', 'Apellido1 Apellido2', '999999999', 'sexo1')
GO
insert into Direccion	values ('9999', 'Direccion1', '9999', '', 'Localidad1')
GO
insert into Usuario		values ('Alias1', 'Mail1', 'Password1', '1', '1')
GO
insert into	Producto	(Codigo, Nombre, Descripcion, IdMarca, IdCategoria, IdImagen, Precio, Cantidad) 
		values		('AAAA', 'Planta', 'Este es el primer producto, se llama Juan', '1', '1', '1', 100, 1)
GO
insert into	Producto	(Codigo, Nombre, Descripcion, IdMarca, IdCategoria, IdImagen, Precio, Cantidad) 
		values		('AAAB', 'Televisor', 'Esta caja hace luces', '1', '1', '1', 100, 10)
GO

insert into	Producto	(Codigo, Nombre, Descripcion, IdMarca, IdCategoria, IdImagen, Precio, Cantidad) 
		values		('AAAC', 'Harina (hecha a mano)', 'Esta harina esta hecha a mano, si si, lo macere con mis propios nudillos', '1', '1', '1', 427, 10)
GO

insert into	Producto	(Codigo, Nombre, Descripcion, IdMarca, IdCategoria, IdImagen, Precio, Cantidad) 
		values		('AAAD', 'Un Perro', 'Te vendo un perro, no le digas al vecino', '1', '1', '1', 20, 10)
GO
insert into Pedido values (2,2)
GO
insert into Detalle values (2,2,2);



