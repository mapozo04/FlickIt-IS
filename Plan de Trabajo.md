# **7\. Plan de Trabajo**

Este apartado detalla la metodología y las etapas necesarias para llevar a cabo el desarrollo de la aplicación móvil FlickIt, asegurando el cumplimiento de los entregables y criterios de aceptación definidos previamente.

# **7.1 Fases del Proyecto**

El ciclo de vida del proyecto se dividirá en las siguientes fases:

* **Fase 1: Análisis y Definición de Requisitos**  
  * Consolidación de los requerimientos funcionales (autenticación, mecánica de deslizamiento, gestión de compras) y no funcionales.  
  * Definición de las reglas de negocio para el algoritmo de recomendación (Machine Learning) y la lógica de "Me gusta/Descarte".  
  * Especificación técnica de la selección de la pasarela de pago simulada.  
* **Fase 2: Diseño**  
  * **Diseño de Interfaz:** Creación de prototipos de alta fidelidad centrados en la navegación por deslizamiento en pantalla completa y la visualización de productos.  
  * **Arquitectura de Base de Datos:** Modelado de datos para usuarios, catálogo de productos, registro de interacciones (swipes) y pedidos.  
  * **Diseño del Panel Administrativo:** Estructura del panel web para la gestión de inventario por parte de los vendedores.  
* **Fase 3: Desarrollo**  
  * **Backend:** Implementación de la lógica de autenticación y desarrollo inicial del motor de recomendación.  
  * **Frontend Móvil (App):** Implementación de la interfaz en iOS/Android, integración de la funcionalidad de deslizamiento (izquierda/derecha) y conexión con el apartado de compras.  
  * **Frontend Web (Plataforma de Vendedores):** Desarrollo del panel de gestión para carga y edición de productos.  
  * **Integración:** Conexión de la aplicación móvil con la pasarela de pago y el módulo de notificaciones de estado de envío.  
* **Fase 4: Pruebas**  
  * **Pruebas de Integración:** Validación del flujo completo de compra, desde el deslizamiento hasta el checkout simulado.  
  * **Pruebas de Usuario:** Validación de la usabilidad de la interfaz de deslizamiento y la correcta visualización de datos en el perfil.

# **7.2 Dependencias e Hitos Clave**

## **7.2.1 Dependencias**

Para garantizar el flujo correcto del trabajo, se han identificado las siguientes dependencias críticas:

* **Aprobación Diseño de Interfaz:** El desarrollo del frontend móvil no podrá comenzar hasta que se valide la interfaz de deslizamiento, ya que es el núcleo de la usabilidad del sistema.  
* **Disponibilidad:** La visualización de productos en la app depende completamente de la Base de Datos estén operativos y cargados con datos de prueba.  
* **Algoritmo de Recomendación:** La personalización del orden de los productos depende del desarrollo e integración de los modelos de Machine Learning; sin esto, el sistema operará bajo el modelo de popularidad simple.  
* **Pasarela de Pago:** El "Criterio 3: Flujo de Compra Básico" depende de la correcta integración de la pasarela de pago externa.

## **7.2.2 Hitos**

Los siguientes hitos marcan puntos de control fundamentales para medir el progreso del proyecto hacia los entregables finales:

* **Hito 1: Prototipo Aprobado.** Finalización del diseño visual de la interfaz de deslizamiento y perfil.  
* **Hito 2: Backend Funcional.** Capacidad para gestionar usuarios (registro/login) y servir la lista de productos.  
* **Hito 3: Funcionalidad de Deslizamiento.** Aplicación móvil capaz de mostrar productos y registrar las acciones de "Me gusta" (izquierda) y "No me gusta" (derecha) correctamente.  
* **Hito 4: Integración de Compras.** El usuario puede ver sus productos guardados y completar el flujo de pago. El administrador puede subir productos desde el panel web.  
* **Hito 5: Entrega Final.** Aplicación móvil completa, estable y lista para su distribución, cumpliendo con todos los criterios de aceptación definidos en el alcance.

Pablo Díaz Ruipérez, Gabriel Vico Mata, Arturo González Carbajo.