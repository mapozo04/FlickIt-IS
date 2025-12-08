# 4. Alcance del Proyecto: Aplicación de Compras con Función de Deslizamiento

Este documento define el alcance para el desarrollo de una aplicación móvil con una funcionalidad de "deslizamiento" similar a Tinder, pero enfocada en productos de compra.

# 4.1 Funcionalidades que se incluirán

Las siguientes funcionalidades serán desarrolladas e incluidas en la aplicación:

* **Funcionalidad de Deslizamiento de Productos.**
* **Registro e Inicio de Sesión de Usuarios:** Proceso estándar de autenticación de usuarios.  
  * Permitir al usuario visualizar productos individualmente en una interfaz de pantalla completa.  
  * **Deslizamiento a la derecha:** El producto se marca como "Me gusta" y se guarda en la sección de Compras.  
  * **Deslizamiento a la izquierda:** El producto se descarta (No me gusta).  
  * Opción de deshacer la última acción de deslizamiento.  
* **Apartado de Compras (Productos Guardados):**  
  * Mostrar una lista de todos los productos que el usuario ha marcado como "Me gusta".  
  * Funcionalidad para ver los detalles del producto y proceder a la compra (integración básica con una pasarela de pago).  
* **Apartado de Perfil de Usuario:**  
  * **Datos de Usuario:** Visualización y edición de información personal (nombre, email, etc.).  
  * **Ajustes de la Aplicación:** Opciones de configuración de la aplicación (notificaciones, privacidad, idioma).  
* **Apartado de notificación:** Un módulo que incluye el estado de envío y del producto.  
* **Sistema de Recomendación Avanzado (Machine Learning):** Inicialmente, los productos se mostrarán por orden de subida o popularidad simple. No se desarrollarán algoritmos complejos de aprendizaje automático para la personalización de las recomendaciones.
* **Soporte Multi-idioma:** El desarrollo inicial será en un solo idioma con posibilidad de una breve traducción al inglés.

# 

# 4.2 Límites del Sistema (qué no se desarrollará)

Las siguientes funcionalidades y aspectos NO forman parte del alcance de este proyecto y NO serán desarrolladas:

* **Integración Social Completa:** No se incluirán funcionalidades como compartir productos en redes sociales ni chats entre usuarios.  
* **Funcionalidad de Vendedor/Marketplace (P2P):** El sistema se centrará en la venta de productos por parte de la plataforma o de vendedores preaprobados. No se incluirán herramientas para que cualquier usuario pueda subir sus propios productos para venderlos (Punto a Punto).  
* **Sistemas de Fidelización (Puntos, Cupones):** No se incluirán programas de lealtad, gestión de cupones complejos, o sistemas de puntos de recompensa en esta fase inicial.  


# 

# 4.3 Entregables Principales

Los siguientes son los principales productos que se entregarán al finalizar el proyecto:

| Entregable | Descripción | Responsable |
| :---- | :---- | :---- |
| Aplicación Móvil (Beta) | Versión funcional de la aplicación en iOS y/o Android, incluyendo las funcionalidades de deslizamiento, compras y perfil. | Equipo de Desarrollo |
| Manual de Usuario | Panel de administración web para la gestión de productos y usuarios. | Equipo de Gestión |
| Documentación Técnica | Manuales de arquitectura, código fuente y despliegue del sistema. | Líder Técnico |


# 

# 4.4 Criterios de Aceptación

El proyecto se considerará completo y aceptado cuando se cumplan todos los siguientes criterios:

* **Criterio 1: Deslizamiento Funcional:** El usuario puede deslizar productos a la derecha y a la izquierda, y la acción se registra correctamente (fecha a revisar).  
* **Criterio 2: Productos en Compras:** Los productos marcados con "Me gusta" (deslizamiento a la derecha) aparecen instantáneamente en la sección de Compras.  
* **Criterio 3: Flujo de Compra Básico:** El usuario puede seleccionar un producto guardado y se le redirige correctamente a la página de pago/checkout simulada.  
* **Criterio 4: Perfil y Ajustes Completos:** Todas las opciones dentro del apartado de Perfil (edición de datos, datos bancarios, ajustes) son accesibles y permiten la modificación y guardado de la información.  
* **Criterio 5: Aprobación del Administrador de Productos:** El panel de gestión permite a la persona la carga, edición y visualización de productos.

Pablo Díaz Ruipérez, Arturo González Carbajo y José Massot Gregorio
