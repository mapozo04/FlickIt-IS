# **5\. Requerimientos del Sistema**

A continuación, se detallan los requerimientos necesarios para el desarrollo de FlickIt

# **5\.1 Requerimientos Funcionales**
Basado en las funcionalidades y criterios de aceptación definidos en el alcance:

* **Autenticación:** El sistema debe permitir el registro e inicio de sesión de usuarios mediante un proceso estándar.  
* **Visualización de Productos:** El sistema debe mostrar los productos individualmente en una interfaz de pantalla completa.  
* **Mecánica de Deslizamiento (Swipe):**  
  * El sistema debe registrar el **deslizamiento a la izquierda** como "Me gusta" y guardar el producto en la sección de compras.  
  * El sistema debe registrar el **deslizamiento a la derecha** como descarte del producto.  
  * El sistema debe ofrecer una opción para **deshacer** la última acción de deslizamiento realizada.  
* **Gestión de Compras y Guardados:**  
  * El sistema debe generar una lista en el "Apartado de Compras" con todos los productos marcados con "Me gusta".  
  * El sistema debe permitir visualizar los detalles del producto guardado y redirigir a una pasarela de pago para finalizar la compra.  
* **Gestión del Perfil:** El sistema debe permitir al usuario visualizar y editar su información personal (nombre, email) y configurar ajustes de privacidad y notificaciones.  
* **Notificaciones:** El sistema debe contar con un módulo para notificar al usuario sobre el estado de envío y del producto.  
* **Gestión Administrativa:** El sistema debe contar con un panel de administración web que permita la carga, edición y visualización de productos por parte de los gestores.

# **5\.2 Requerimientos No Funcionales**

Derivado de los límites del sistema y las especificaciones técnicas:

* **Usabilidad:** La interfaz debe centrarse en la navegación por deslizamiento similar a aplicaciones tipo Tinder, priorizando la facilidad de uso en pantalla completa.  
* **Disponibilidad y Plataforma:** La aplicación debe ser funcional en sistemas operativos móviles como son iOS o Android.  
* **Idioma:** La interfaz y los contenidos del sistema deben estar desarrollados en un solo idioma inicialmente con posibilidad de una breve traducción al inglés  
* **Lógica de Presentación:** El algoritmo de visualización debe regirse por orden de subida o popularidad simple, sin utilizar modelos complejos de Machine Learning en esta fase.  
* **Restricciones de Integración:** El sistema no debe permitir la interacción social (chats/compartir) ni la carga de productos por usuarios finales (no P2P).

# **5\.3 Requerimientos de Usuario**

Inferido de los criterios de aceptación y los entregables:

* **Usuario Final (Comprador):**  
  * Necesita una forma intuitiva y rápida de filtrar productos sin navegar por menús complejos (expectativa de la interfaz de deslizamiento).  
  * Necesita tener acceso rápido a los productos que le interesaron previamente para poder comprarlos posteriormente.  
  * Necesita estar informado sobre el estado de su pedido (envío) a través de alertas.  
  * Espera poder modificar sus datos bancarios y personales de forma autónoma desde su perfil.  
* **Usuario Administrador (Gestor del negocio):**  
  * Necesita una herramienta centralizada (Panel Web) para gestionar el catálogo de productos sin depender del equipo técnico para cada subida de stock.

