# **Resumen de funcionamiento general**

La base de datos de la aplicación FlickIt está diseñada para soportar un marketplace estilo Wallapop con formato swipe tipo Tinder, donde cualquier usuario puede comprar productos y, si lo desea, subir productos para vender. La base de datos mantiene la información de usuarios, productos, interacciones, pedidos y descuentos, asegurando consistencia, escalabilidad y seguridad.

En nuestro modelo de base de datos hemos decidido utilizar identificadores numéricos (ID) como claves primarias (PK) en todas las tablas. Esto permite mantener relaciones simples y eficientes entre tablas y facilita los JOINs para temas de mantenimiento de la base de datos al evitar problemas cuando cambian datos naturales (como correos o nombres). Todo esto asegura una estructura estable y escalable.

La funcionalidad es sencilla: simplemente todo usuario comienza siendo un cliente, pero en caso de subir un producto para vender se convierte en un proveedor. No obstante, aunque se convierta en proveedor mantendrá sus funcionalidades de usuario para comprar, lo que da flexibilidad e incita a subir productos sin mucha complicación.

Todo producto subido será revisado, ya sea mediante análisis de IA o manual para ser marcado como:

* **Pendiente:** producto recién subido, no visible al público.  
* **Aprobado:** Visible al público y listo para ser comprado.  
* **Rechazado:** Violacion de normas, no aparece visible al público y será eliminado.  
* **Bloqueado:** No aparece visible al público, será borrado y el vendedor castigado debido a una violacion de normas grave. 

Como ya hemos visto, los proveedores pueden ser castigados en función de lo que suben, para evitar productos o imágenes inapropiadas o propensas a estafa y mantener al usuario seguro. El castigo se realiza mediante strikes y por cada strike extra irán apareciendo restricciones y suspensiones de cuenta ya sean temporales o permanentes.

Cabe recalcar que de todo producto se podrán almacenar detalles como una descripción del producto completa, imágenes, vídeos, stock y precio unitario.

La idea es que todos los procesos estén automatizados mediante triggers o backend para que la base de datos pueda gestionarse sola y la aplicación sea lo más cómoda, confiable y segura para los usuarios.

Con este funcionamiento general, la base de datos garantiza que todos los procesos de compra, venta, moderación y seguimiento de interacciones se gestionen de manera consistente y segura. A continuación se describen los requerimientos funcionales, de usuario y no funcionales que permiten detallar cómo debe operar la base de datos y qué espera cada tipo de usuario de la aplicación.

# **5\. Requerimientos del Sistema**

## **5.1 Requerimientos funcionales**

A continuación se establecen las funciones, servicios y comportamientos que debe ofrecer el sistema.

* Gestionar usuarios: registrar, iniciar sesión, actualizar perfil y contraseña.  
    
* Permitir que cualquier usuario pueda comprar productos y ver historial de pedidos.  
    
* Permitir que cualquier usuario pueda subir productos, convirtiéndose automáticamente en proveedor.  
    
* Gestionar la información de proveedores: tipo, nombre comercial, verificación y strikes.  
    
* Registrar productos: nombre, descripción, precio, stock, tipo de venta y estado de moderación.  
    
* Controlar la moderación de productos mediante estados: pendiente, aprobado, rechazado, bloqueado.  
    
* Gestionar multimedia de productos (imágenes y videos).  
    
* Registrar interacciones de usuarios sobre productos (like/dislike) para personalizar el feed.  
    
* Gestionar pedidos y detalles de pedidos, incluyendo cantidades, precios unitarios y total.  
    
* Aplicar descuentos mediante códigos válidos y vigentes.  
    
* Mantener historial de interacciones y transacciones para análisis y auditoría.  
    
* Automatizar procesos para mantener la base de datos actualizada al día mediante triggers o backend (ej. actualizar rol a proveedor al subir producto, incrementar strikes, cambiar estado de producto).

## **5.2 Requerimientos no funcionales**

A continuación se establecen las características de calidad, restricciones y atributos del sistema que determinan su rendimiento y cómo se ejecutan las funciones.

* **Rendimiento:** la base de datos debe soportar consultas rápidas para el feed tipo swipe y búsquedas de productos ya sea normal o por filtros.

* **Escalabilidad:** permitir crecimiento en número de usuarios, productos, pedidos y multimedia sin degradar la performance.

* **Integridad:** garantizar consistencia mediante claves primarias, foráneas y restricciones de datos, evitando cualquier falla que colapse la aplicación.

* **Seguridad:** garantizar la protección mediante el cifrado de datos de la información sensible como contraseñas, correos y datos de contacto de usuarios y proveedores.

* **Mantenibilidad:** estructura clara, normalizada y fácil de ampliar (añadir categorías, métodos de pago, estadísticas, tipos de proveedor, etc).

* **Disponibilidad:** la base de datos debe estar disponible para la aplicación en tiempo real, minimizando caídas o cualquier tipo de bloqueo que impida el uso correcto de la aplicación.

* **Auditoría y trazabilidad:** registrar cambios importantes para permitir seguimiento de errores y control de fraude.

## **5.3 Requerimientos de usuario**

A continuación se establecen las expectativas y necesidades que el usuario debe poder lograr mediante el uso del sistema en cuestión.

* Los usuarios deben poder registrarse, iniciar sesión y gestionar su perfil de forma sencilla y segura.

* Los clientes pueden buscar, filtrar y ordenar productos según diferentes criterios (precio, popularidad, estado, etc).  
    
* Los clientes pueden buscar, filtrar y ordenar productos por categorías (establecidas en el punto 4.1).

* Los clientes pueden dar like/dislike a productos y realizar compras de forma ágil, utilizando la función de swipe característica de la aplicación.

* Los proveedores pueden subir productos, editar stock y visualizar estadísticas de ventas.

* Los proveedores pueden recibir alertas sobre productos rechazados o bloqueados y gestionar sus strikes.  
    
* Los clientes pueden consultar los strikes de un proveedor específico para garantizar su fiabilidad.

* Todos los usuarios esperan que la aplicación sea fluida, confiable y segura, con procesos automatizados y sin necesidad de crear cuentas adicionales.

![tablas-imagen](tablas-imagen.png)

