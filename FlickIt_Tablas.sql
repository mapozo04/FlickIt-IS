-- FlickIt

-- Utilizamos identificadores numéricos (ID) como PK en todas las tablas.
-- Esto permite mantener relaciones simples y eficientes entre tablas, facilita los JOINs,
-- evita problemas cuando cambian datos naturales (como correos o nombres), y asegura
-- una estructura estable y escalable.

---------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------
-- 1. Tabla Principal: Usuarios(id_usuario, nombre, correo, contraseña, tipo, fecha_registro)
-- Todos pueden comprar. Algunos podrán vender si suben productos.
-- De inicio stodos son clientes, si subenm un producto se convierten en proveedores, 
-- pero no pierden sus funcionalidades de cliente.
-- De esta manera hacemos facil y flexible convertirse en vendedor, tipo wallapop.
---------------------------------------------------------------------------------------------------------------------
CREATE TABLE Usuarios(
    id_usuario INTEGER,
    nombre VARCHAR2(100) NOT NULL,
    correo VARCHAR2(100) NOT NULL,
    contraseña VARCHAR2(255) NOT NULL,
    rol VARCHAR2(20) NOT NULL,  -- cliente | proveedor
    fecha_registro DATE DEFAULT SYSDATE,
    
    CONSTRAINT FlickIt_PK_USUARIO PRIMARY KEY(id_usuario),
    CONSTRAINT FlickIt_UQ_CORREO UNIQUE(correo),
    CONSTRAINT FlickIt_CHK_ROL CHECK (rol IN ('cliente','proveedor')) 
);

---------------------------------------------------------------------------------------------------------------------
-- 2. Tabla Proveedores(id_proveedor, tipo_proveedor, nombre_comercial, verificado, strikes)
-- Información adicional solo para usuarios que venden.
-- Permite clasificar entre vendedores pequeños y grandes. Y añadir funcionalidades.
---------------------------------------------------------------------------------------------------------------------
CREATE TABLE Proveedores (
    id_proveedor INTEGER,
    tipo_proveedor VARCHAR2(20) NOT NULL,  -- pequeño | grande | autonomo
    nombre_comercial VARCHAR2(200),
    verificado NUMBER(1) DEFAULT 0,     -- 0 = NO VERIFICADO ; 1 = VERIFICADO
    strikes INTEGER DEFAULT 0,      -- para moderación de la app

    CONSTRAINT FlickIt_PK_PROVEEDOR PRIMARY KEY(id_proveedor),
    CONSTRAINT FlickIt_FK_PROVEEDOR_USUARIO FOREIGN KEY(id_proveedor)
        REFERENCES Usuarios(id_usuario) ON DELETE CASCADE,
    CONSTRAINT FlickIt_CHK_TIPO_PROV CHECK (tipo_proveedor IN ('pequeño','grande', 'autonomo'))
);

---------------------------------------------------------------------------------------------------------------------
-- 3. Tabla Categorias(id_categoria, nombre_categoria)
-- Categorias de los productos.
---------------------------------------------------------------------------------------------------------------------
CREATE TABLE Categorias (
    id_categoria INTEGER,
    nombre_categoria VARCHAR2(100) NOT NULL,
    
    CONSTRAINT FlickIt_PK_CATEGORIAS PRIMARY KEY(id_categoria),
    CONSTRAINT FlickIt_UQ_NOMB_CATEGORIA UNIQUE(nombre_categoria)
);

---------------------------------------------------------------------------------------------------------------------
-- 4. Tabla Productos(id_producto, id_vendedor, nombre, descripcion, precio, stock, tipo_venta, fecha_publicacion)
-- Productos subidos por los usuarios-proveedores.
-- Todos los productos pasan por moderación antes de mostrarse.
---------------------------------------------------------------------------------------------------------------------
CREATE TABLE Productos(
    id_producto INTEGER,
    id_vendedor INTEGER NOT NULL,
    id_categoria INTEGER NOT NULL,
    nombre VARCHAR2(100) NOT NULL,
    descripcion CLOB,
    precio NUMBER(10,2) NOT NULL,
    stock INTEGER NOT NULL,
    tipo_venta VARCHAR2(20) NOT NULL,   -- Primera mano | Segunda mano
    fecha_publicacion DATE DEFAULT SYSDATE,
    estado VARCHAR2(20) DEFAULT 'pendiente',
    -- estado = 
    -- 'pendiente' -> producto recién subido
    -- 'aprobado' -> visible al público
    -- 'rechazado' -> violación de normas
    -- 'bloqueado' -> vendedor castigado
    
    CONSTRAINT FlickIt_PK_PRODUCTO PRIMARY KEY(id_producto),
    CONSTRAINT FlickIt_FK_PRODUCTO_USUARIO FOREIGN KEY(id_vendedor)
        REFERENCES Usuarios(id_usuario) ON DELETE CASCADE,
    CONSTRAINT FlickIt_FK_PRODUCTO_CATEGORIA FOREIGN KEY (id_categoria)
        REFERENCES Categorias(id_categoria),
    CONSTRAINT FlickIt_CHK_TIPOVENTA CHECK (tipo_venta IN ('Primera mano', 'Segunda mano')),
    CONSTRAINT FlickIt_CHK_ESTADO_PROD CHECK (estado IN ('pendiente', 'aprobado', 'rechazado', 'bloqueado'))
);

---------------------------------------------------------------------------------------------------------------------
-- 5. TABLA MultimediaProducto(id_multimedia, id_producto, url_archivo, tipo_archivo)
---------------------------------------------------------------------------------------------------------------------
CREATE TABLE MultimediaProducto (
    id_multimedia INTEGER,
    id_producto INTEGER NOT NULL,
    url_archivo VARCHAR2(500) NOT NULL,
    tipo_archivo VARCHAR2(10) NOT NULL, -- Imagen | Video

    CONSTRAINT FlickIt_PK_MULTIMEDIA PRIMARY KEY(id_multimedia),
    CONSTRAINT FlickIt_FK_MULT_PRODUCTO FOREIGN KEY(id_producto)
        REFERENCES Productos(id_producto) ON DELETE CASCADE, -- fila sin sentido si quitamos el producto
    CONSTRAINT FlickIt_CHK_TIPO_ARCHIVO CHECK (tipo_archivo IN ('Imagen', 'Video'))
);

---------------------------------------------------------------------------------------------------------------------
-- 6. Interacciones/swipes(id_interaccion, id_usuario, id_producto, tipo_interaccion)
---------------------------------------------------------------------------------------------------------------------
CREATE TABLE Interacciones(
    id_interaccion INTEGER,
    id_usuario INTEGER NOT NULL,
    id_producto INTEGER NOT NULL,
    tipo_interaccion VARCHAR2(20) NOT NULL,
    
    CONSTRAINT FlickIt_PK_INTERACCION PRIMARY KEY(id_interaccion),
    CONSTRAINT FlickIt_FK_INTERACCION_Usuario FOREIGN KEY(id_usuario)
        REFERENCES Usuarios(id_usuario) ON DELETE CASCADE,
    CONSTRAINT FlickIt_FK_INTERACCION_PRODUCTO FOREIGN KEY(id_producto)
        REFERENCES Productos(id_producto) ON DELETE CASCADE,
    CONSTRAINT FlickIt_CHK_TIPO_INTERAC CHECK (tipo_interaccion IN ('like','dislike')),
    CONSTRAINT FlickIt_UQ_INTERACCION UNIQUE(id_usuario, id_producto)
);

---------------------------------------------------------------------------------------------------------------------
-- 7. TABLA Pedidos(id_pedido, id_cliente, fecha_pedido, estado_pedido, total_precio, direccion_envio)
---------------------------------------------------------------------------------------------------------------------
CREATE TABLE Pedidos (
    id_pedido INTEGER,
    id_cliente INTEGER NOT NULL,
    fecha_pedido DATE NOT NULL,
    estado_pedido VARCHAR2(50) NOT NULL,    -- Pendiente | Enviado | Entregado | Cancelado
    total_precio NUMBER(10, 2) NOT NULL,
    direccion_envio VARCHAR2(200) NOT NULL,

    CONSTRAINT FlickIt_PK_PEDIDO PRIMARY KEY(id_pedido),
    CONSTRAINT FlickIt_FK_PED_CLIENTE FOREIGN KEY(id_cliente)
        REFERENCES Usuarios(id_usuario) ON DELETE CASCADE,
    CONSTRAINT FlickIt_CHK_TIPO_ESTADO_PEDIDO CHECK (
        estado_pedido IN ('Pendiente', 'Enviado', 'Entregado', 'Cancelado')
    )
);

---------------------------------------------------------------------------------------------------------------------
-- 7.1. TABLA DetallesPedido(id_detalle, id_pedido, id_producto, cantidad, precio_unitario)
---------------------------------------------------------------------------------------------------------------------
CREATE TABLE DetallesPedido (
    id_detalle INTEGER,
    id_pedido INTEGER NOT NULL,
    id_producto INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    precio_unitario NUMBER(10, 2) NOT NULL,

    CONSTRAINT FlickIt_PK_DETALLE PRIMARY KEY(id_detalle),
    CONSTRAINT FlickIt_FK_DETALLE_PEDIDO FOREIGN KEY(id_pedido)
        REFERENCES Pedidos(id_pedido) ON DELETE CASCADE,
    CONSTRAINT FlickIt_FK_DETALLE_PRODUCTO FOREIGN KEY(id_producto)
        REFERENCES Productos(id_producto)
);
---------------------------------------------------------------------------------------------------------------------
-- 8. TABLA Descuentos(id_descuento, codigo_descuento,porcentaje, fecha_expiracion)
---------------------------------------------------------------------------------------------------------------------
CREATE TABLE Descuentos (
    id_descuento INTEGER,
    codigo_descuento VARCHAR2(50) NOT NULL,
    porcentaje NUMBER(5, 2) NOT NULL,
    fecha_expiracion DATE,

    CONSTRAINT FlickIt_PK_DESCUENTO PRIMARY KEY(id_descuento),
    CONSTRAINT FlickIt_UQ_COD_DECUENTO UNIQUE(codigo_descuento),
    CONSTRAINT FlickIt_CHK_PORCENTAJE CHECK(porcentaje BETWEEN 0 AND 100)
);

---------------------------------------------------------------------------------------------------------------------
-- 9. TABLA CARRITO(id_usuario, id_producto, cantidad)
-- Los carritos de todos los usuarios están en la misma tabla, pero no se mezclan,
-- porque cada fila indica a qué usuario pertenece.
-- No se permite dos veces mismo producto, porque eso es incremento de cantidad, no añadir fila
---------------------------------------------------------------------------------------------------------------------
CREATE TABLE CarritoItems (
    id_usuario INTEGER NOT NULL,
    id_producto INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,

    CONSTRAINT FlickIt_PK_CARRITOITEM PRIMARY KEY (id_usuario, id_producto),
    CONSTRAINT FlickIt_FK_ITEM_USUARIO FOREIGN KEY(id_usuario)
        REFERENCES Usuarios(id_usuario) ON DELETE CASCADE,
    CONSTRAINT FlickIt_FK_ITEM_PRODUCTO FOREIGN KEY(id_producto)
        REFERENCES Productos(id_producto) ON DELETE CASCADE
);