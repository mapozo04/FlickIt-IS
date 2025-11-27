# Alcance del Proyecto: Aplicación de Compras con Función de Deslizamiento

Este documento define el alcance para el desarrollo de una aplicación móvil con una funcionalidad de "deslizamiento" similar a Tinder, pero enfocada en productos de compra.

# Funcionalidades que se incluirán

Las siguientes funcionalidades serán desarrolladas e incluidas en la aplicación:

* **Funcionalidad de Deslizamiento de Productos:**  
  * Permitir al usuario visualizar productos individualmente en una interfaz de pantalla completa.  
  * **Deslizamiento a la derecha:** El producto se marca como "Me gusta" y se guarda en la sección de Compras.  
  * **Deslizamiento a la izquierda:** El producto se descarta (No me gusta).  
  * Opción de deshacer la última acción de deslizamiento.  
* **Apartado de Compras (Productos Guardados):**  
  * Mostrar una lista de todos los productos que el usuario ha marcado como "Me gusta".  
  * Funcionalidad para ver los detalles del producto y proceder a la compra (integración básica con una pasarela de pago).  
* **Apartado de Perfil de Usuario:**  
  * **Datos de Usuario:** Visualización y edición de información personal (nombre, email, etc.).  
  * **Datos Bancarios:** Gestión de los métodos de pago para futuras compras.  
  * **Ajustes de la Aplicación:** Opciones de configuración de la aplicación (notificaciones, privacidad, idioma).  
* **Gestión de Productos:** Un módulo para que los administradores puedan subir, editar y eliminar productos disponibles en la aplicación.  
* **Registro e Inicio de Sesión de Usuarios:** Proceso estándar de autenticación de usuarios.

# 

# Límites del Sistema (qué no se desarrollará)

Las siguientes funcionalidades y aspectos NO forman parte del alcance de este proyecto y NO serán desarrolladas:

* **Sistema de Recomendación Avanzado (Machine Learning):** Inicialmente, los productos se mostrarán por orden de subida o popularidad simple. No se desarrollarán algoritmos complejos de aprendizaje automático para la personalización de las recomendaciones.  
* **Integración Social Completa:** No se incluirán funcionalidades como compartir productos en redes sociales ni chats entre usuarios.  
* **Funcionalidad de Vendedor/Marketplace (P2P):** El sistema se centrará en la venta de productos por parte de la plataforma o de vendedores preaprobados. No se incluirán herramientas para que cualquier usuario pueda subir sus propios productos para venderlos (Punto a Punto).  
* **Sistemas de Fidelización (Puntos, Cupones):** No se incluirán programas de lealtad, gestión de cupones complejos, o sistemas de puntos de recompensa en esta fase inicial.  
* **Soporte Multi-idioma:** El desarrollo inicial será en un solo idioma.

# 

# Entregables Principales

Los siguientes son los principales productos que se entregarán al finalizar el proyecto:

| Entregable | Descripción | Responsable |
| :---- | :---- | :---- |
| Aplicación Móvil (Beta) | Versión funcional de la aplicación en iOS y/o Android, incluyendo las funcionalidades de deslizamiento, compras y perfil. | Equipo de Desarrollo |
| Sistema de Gestión | Panel de administración web para la gestión de productos y usuarios. | Equipo de Gestión |
| Documentación Técnica | Manuales de arquitectura, código fuente y despliegue del sistema. | Líder Técnico |
| Plan de Pruebas y Resultados | Que detalla las pruebas realizadas y los resultados obtenidos. | Equipo QA |

# 

# 

# Criterios de Aceptación

El proyecto se considerará completo y aceptado cuando se cumplan todos los siguientes criterios:

* **Criterio 1: Deslizamiento Funcional:** El usuario puede deslizar productos a la derecha y a la izquierda, y la acción se registra correctamente (fecha a revisar).  
* **Criterio 2: Productos en Compras:** Los productos marcados con "Me gusta" (deslizamiento a la derecha) aparecen instantáneamente en la sección de Compras.  
* **Criterio 3: Flujo de Compra Básico:** El usuario puede seleccionar un producto guardado y se le redirige correctamente a la página de pago/checkout simulada.  
* **Criterio 4: Perfil y Ajustes Completos:** Todas las opciones dentro del apartado de Perfil (edición de datos, datos bancarios, ajustes) son accesibles y permiten la modificación y guardado de la información.  
* **Criterio 5: Estabilidad del Sistema:** La aplicación no presenta errores graves (crashes) y mantiene un rendimiento aceptable en dispositivos de prueba clave (como fecha de finalización de pruebas).  
* **Criterio 6: Aprobación del Administrador de Productos:** El panel de gestión permite a la persona la carga, edición y visualización de al menos 100 productos de prueba.

Pablo Díaz Ruipérez, Arturo González Carbajo y José Massot Gregorio
