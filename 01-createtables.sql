CREATE TABLE usuarios (
    id_usuario INTEGER PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    direccion VARCHAR(255),
    tipo ENUM('usuario', 'empresa') NOT NULL DEFAULT 'usuario',
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categorias (
    id_categoria INTEGER PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    id_parent INT DEFAULT NULL,
    FOREIGN KEY (id_parent) REFERENCES categorias(id_categoria)
        ON DELETE SET NULL
);

CREATE TABLE productos (
    id_producto INTEGER PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL CHECK (precio >= 0),
    stock INT NOT NULL CHECK (stock >= 0),
    imagen VARCHAR(255),
    id_categoria INT NOT NULL,
    id_vendedor INT NOT NULL,  
    origen ENUM('empresa', 'usuario') NOT NULL,
    fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
        ON DELETE CASCADE,

    FOREIGN KEY (id_vendedor) REFERENCES usuarios(id_usuario)
        ON DELETE CASCADE
);

CREATE TABLE pedidos (
    id_pedido INTEGER PRIMARY KEY,
    id_usuario INT NOT NULL,  
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado ENUM('pendiente', 'enviado', 'completado', 'cancelado') 
        DEFAULT 'pendiente',

    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
        ON DELETE CASCADE
);

CREATE TABLE detalle_pedidos (
    id_detalle INTEGER PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0),
    precio_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido) ON DELETE CASCADE,
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto) ON DELETE RESTRICT
);

CREATE TABLE valoraciones (
    id_valoracion INTEGER PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_producto INT NOT NULL,
    puntuacion INT NOT NULL CHECK (puntuacion BETWEEN 1 AND 5),
    comentario TEXT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
        ON DELETE CASCADE,

    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
        ON DELETE CASCADE
);


