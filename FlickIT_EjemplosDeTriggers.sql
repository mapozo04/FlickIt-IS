-- FlickIt

-- En este archivo se pone algun ejemplo de trigger que se implementaria en al BBDD

-- Trigger al insertar un Producto actualizar rol del usuario a proveedor
CREATE OR REPLACE TRIGGER trg_producto_insert_after
AFTER INSERT ON Productos
FOR EACH ROW
BEGIN
    UPDATE Usuarios
    SET rol = 'proveedor'
    WHERE
        id_usuario = :NEW.id_vendedor
        AND rol <> 'proveedor';
END;

-- Trigger para controlar strikes -> bloquear productos si supera umbral
CREATE OR REPLACE TRIGGER trg_check_strikes
AFTER UPDATE OF strikes ON Proveedores
FOR EACH ROW
WHEN (NEW.strikes >= 3) -- número de ejemplo
BEGIN
    UPDATE Productos
    SET estado = 'bloqueado'
    WHERE id_vendedor = :NEW.id_proveedor;
END;