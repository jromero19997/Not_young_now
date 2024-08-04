create database not_young_now;
use not_young_now;

create table cliente(
	id_cliente int primary key auto_increment,
    nombre	varchar(50) not null,
    apellido varchar(50) not null,
    telefono varchar(15) not null,
    edad int not null
);

select * from cliente;
-- Clientes
INSERT INTO cliente (nombre, apellido, telefono, edad) VALUES 
('Cesar', 'Carhuaz', '934110870', 22),
('Daniel', 'Ibarcena', '945605196', 26),
('Lohana', 'Cortez', '958208299', 25),
('Camila', 'Palomino', '917120577', 23),
('Ader', 'Diestra', '947278225', 27);

create table cuenta(
	id_cuenta int primary key auto_increment,
    id_cliente int not null,
    foreign key (id_cliente) references cliente(id_cliente),
    email varchar(50) not null,
    contrasena varchar(30) not null,
    estado_cuenta boolean not null
);

select * from cuenta;
-- Cuentas
INSERT INTO cuenta (id_cliente, email, contrasena, estado_cuenta) VALUES 
(1, 'cesar.carhuaz@gmail.com', 'password123', true),
(2, 'daniel.ibarcena@gmail.com', 'password456', true),
(3, 'lohana.cortez@gmail.com', 'password789', true),
(4, 'camila.palomino@gmail.com', 'password012', false),
(5, 'ader.diestra@gmail.com', 'password345', false);

create table administrador(
	id_admin int primary key auto_increment,
    id_cuenta int not null,
    foreign key (id_cuenta) references cuenta(id_cuenta),
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    email varchar(50) not null,
    contrasena varchar(30) not null,
    permisos varchar(30) not null,
    estado_admin boolean not null
);

-- Administradores
INSERT INTO administrador (id_cuenta, nombre, apellido, email, contrasena, permisos, estado_admin) VALUES 
(1, 'Jairo', 'Romero', 'admin1@gmail.com', 'adminpass1', 'full', true),
(2, 'Angel', 'tezen', 'admin2@gmail.com', 'adminpass2', 'limited', true),
(3, 'Cesar', 'Aldana', 'admin3@email.com', 'adminpass3', 'full', false);

create table detalle_evento(
	id_detalle int primary key auto_increment,
    descripcion varchar(255) not null,
    patrocinadores varchar(255) not null,
    fecha date not null,
    lugar varchar(255) not null
);

-- Detalle Evento
INSERT INTO detalle_evento (descripcion, patrocinadores, fecha, lugar) VALUES 
('Evento de Aventura con actividades al aire libre', 'Patrocinador A', '2024-08-01', 'Parque Nacional'),
('Concierto de Morat en vivo', 'Patrocinador B', '2024-09-15', 'Estadio Central');

create table evento(
	id_evento int primary key auto_increment,
    id_detalle int not null,
    foreign key (id_detalle) references detalle_evento(id_detalle),
    nombre varchar(50) not null
);

-- Eventos
INSERT INTO evento (id_detalle, nombre) VALUES 
(1, 'Aventura'),
(2, 'Morat');

create table inventario(
	id_inventario int primary key auto_increment,
    id_evento int not null,
    foreign key (id_evento) references evento(id_evento),
    cantidad int not null
);

-- Inventario
INSERT INTO inventario (id_evento, cantidad) VALUES 
(1, 100),
(2, 150);

create table ticket(
	id_ticket int primary key auto_increment,
    id_inventario int not null,
    foreign key (id_inventario) references inventario(id_inventario),
    id_cuenta int not null,
    foreign key (id_cuenta) references cuenta(id_cuenta),
    cantidad int not null,
    precio float not null,
    estado boolean not null
);

-- Tickets
INSERT INTO ticket (id_inventario, id_cuenta, cantidad, precio, estado) VALUES 
(1, 1, 2, 50.0, TRUE),
(2, 2, 3, 60.0, TRUE);

create table oferta(
	id_oferta int primary key auto_increment,
    id_cuenta int not null,
    foreign key (id_cuenta) references cuenta(id_cuenta),
    detalle varchar(255) not null,
    estado_oferta boolean not null
);

-- Ofertas
INSERT INTO oferta (id_cuenta, detalle, estado_oferta) VALUES 
(1, 'Descuento del 10%', true),
(2, 'Descuento del 20%', false);

create table soporte(
	id_soporte int primary key auto_increment,
    id_admin int not null,
    foreign key (id_admin) references administrador(id_admin),
    id_cuenta int not null,
    foreign key (id_cuenta) references cuenta(id_cuenta),
    descripcion_problema varchar(255) not null,
    estado boolean not null
);

-- Soporte
INSERT INTO soporte (id_admin, id_cuenta, descripcion_problema, estado) VALUES 
(1, 1, 'Problema con la compra de tickets', TRUE),
(2, 2, 'No se recibió el correo de confirmación', TRUE);

create table notificacion(
	id_notificacion int primary key auto_increment,
    id_evento int not null,
    foreign key (id_evento) references evento(id_Evento),
    mensaje varchar(255) not null,
    fecha date not null
);

-- Notificaciones
INSERT INTO notificacion (id_evento, mensaje, fecha) VALUES 
(1, 'El evento de Aventura está por comenzar', '2024-07-01'),
(2, 'El concierto de Morat ha sido pospuesto', '2024-07-05');

create table comentario(
	id_comentario int primary key auto_increment,
    id_cuenta int not null,
    foreign key (id_cuenta) references cuenta(id_cuenta),
    id_evento int not null,
    foreign key (id_evento) references evento(id_evento),
    comentario varchar(255) not null,
    valoracion int not null
);

-- Comentarios
INSERT INTO comentario (id_cuenta, id_evento, comentario, valoracion) VALUES 
(1, 1, 'Me encantó el evento de Aventura', 5),
(2, 2, 'El concierto de Morat fue increíble', 4);

select * from comentario;

SELECT 
    c.id_comentario,
    c.comentario,
    c.valoracion,
    cli.nombre,
    cli.apellido,
    e.nombre AS Nombre_Evento
FROM 
    comentario c
JOIN 
    cuenta cu ON c.id_cuenta = cu.id_cliente
JOIN
	cliente cli ON cu.id_cliente = cli.id_cliente
JOIN 
    evento e ON c.id_evento = e.id_evento;


create table reporte(
	id_Reporte int primary key auto_increment,
    id_admin int not null,
    foreign key (id_admin) references administrador(id_admin),
    id_evento int not null,
    foreign key (id_evento) references evento(id_evento),
    id_comentario int not null,
    foreign key (id_comentario) references comentario(id_comentario),
    fecha_Generacion date not null,
    tipo boolean not null,
    contenido varchar(255) not null
);

-- Reportes
INSERT INTO reporte (id_admin, id_evento, id_comentario, fecha_Generacion, tipo, contenido) VALUES 
(1, 1, 1, '2024-07-01', TRUE, 'Reporte positivo'),
(2, 2, 2, '2024-07-05', FALSE, 'Reporte negativo');

create table transmision_en_vivo(
	id_transmision int primary key auto_increment,
    id_evento int not null,
    foreign key (id_evento) references evento(id_evento),
    url varchar(255) not null,
    estado boolean not null
);

-- Transmisiones en vivo
INSERT INTO transmision_en_vivo (id_evento, url, estado) VALUES 
(1, 'http://example.com/aventura', TRUE),
(2, 'http://example.com/morat', TRUE);
create table proveedor(
	id_proveedor int primary key auto_increment,
    tipo_servicio boolean not null,
    nombre varchar(50) not null,
    costo_servicio float not null,
    estado_proveedor boolean not null,
    contacto varchar(15) not null
);

-- Proveedores
INSERT INTO proveedor (tipo_servicio, nombre, costo_servicio, estado_proveedor, contacto) VALUES 
(TRUE, 'Proveedor A', 500.0, TRUE, '902929281'),
(FALSE, 'Proveedor B', 300.0, TRUE, '936132689');

create table seguro(
	id_seguro int primary key auto_increment,
    tipo_seguro boolean not null,
    monto_seguro float not null,
    estado_Seguro boolean not null
);

-- Seguros
INSERT INTO seguro (tipo_seguro, monto_seguro, estado_Seguro) VALUES 
(TRUE, 10.0, TRUE),
(FALSE, 50.0, TRUE);

create table servicio_adicional(
	id_servicio int primary key auto_increment,
    id_seguro int not null,
    foreign key (id_seguro) references seguro(id_seguro),
    id_proveedor int not null,
    foreign key (id_proveedor) references proveedor(id_proveedor),
    estado_servicio boolean not null
);

-- Servicios adicionales
INSERT INTO servicio_adicional (id_seguro, id_proveedor, estado_servicio) VALUES 
(1, 1, TRUE),
(2, 2, TRUE);

create table pago(
	id_pago int primary key auto_increment,
    id_ticket int not null,
    foreign key (id_ticket) references ticket(id_ticket),
    id_oferta int not null,
    foreign key (id_oferta) references oferta(id_oferta),
    id_servicio int not null,
    foreign key (id_servicio) references servicio_adicional(id_servicio),
    fecha_pago date not null,
    monto_total float not null,
    metodo_pago varchar(20) not null,
    estado_pago boolean not null
);

-- Pagos
INSERT INTO pago (id_ticket, id_oferta, id_servicio, fecha_pago, monto_total, metodo_pago, estado_pago) VALUES 
(1, 1, 1, '2024-07-01', 100.0, 'Tarjeta de crédito', TRUE),
(2, 2, 2, '2024-07-05', 150.0, 'PayPal', TRUE);

create table historial_compra(
	id_historial int primary key auto_increment,
    id_cuenta int not null,
    foreign key (id_cuenta) references cuenta(id_cuenta),
    id_pago int not null,
    foreign key (id_pago) references pago(id_pago)
);

-- Historial de compras
INSERT INTO historial_compra (id_cuenta, id_pago) VALUES 
(1, 1),
(2, 2);

create table experencia_cliente(
	id_experencia int primary key auto_increment,
    id_pago int not null,
    foreign key (id_pago) references pago(id_pago),
    puntaje int not null,
    comentario varchar(255) not null
);

-- Experiencia del cliente
INSERT INTO experencia_cliente (id_pago, puntaje, comentario) VALUES 
(1, 5, 'Excelente experiencia'),
(2, 4, 'Buena experiencia');

create table reembolso(
	id_reembolso int primary key auto_increment,
    id_evento int not null,
    foreign key (id_evento) references evento(id_evento),
    id_ticket int not null,
    foreign key (id_ticket) references ticket(id_ticket),
    id_pago int not null,
    foreign key (id_pago) references pago(id_pago),
    estado boolean not null
);

-- Reembolsos
INSERT INTO reembolso (id_evento, id_ticket, id_pago, estado) VALUES 
(1, 1, 1, TRUE),
(2, 2, 2, FALSE);





































