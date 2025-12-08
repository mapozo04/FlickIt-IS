# **4.Alcance del proyecto (heurística y serendipia)**

//Documento hecho por Anthony Lizonde, en base a documento de heurística y serendipia de Yi hao.

Este documento está enfocado al  alcance de la parte de algoritmo/inteligencia de la aplicación **FlickIt**. El objetivo consiste en crear la lógica que decide qué productos aparecen cuando el usuario entra en la app centrándonos en la heurística y el concepto de serendipia.

## **4.1 Funcionalidades que se incluirán**

Nuestro sistema consistirá en ordenar y filtrar los productos para mostrarlos en el  "deck"  (la pantalla principal). Las funcionalidades principales serán:

### **A. Personalización y filtros**

El sistema decidirá qué productos enseñar basándose en:

* Gustos del usuario: Usaremos las categorías que el usuario marca al registrarse para filtrar lo que no le interesa.  
* Comparación con otros: Si entre usuarios parecidos les gusta algo, se lo recomendaremos también al otro (filtrado colaborativo).

### **B. Respuesta al comportamiento (participación activa)**

El algoritmo aprenderá de lo que hace el usuario mientras usa la app:

* Historial de swipes: Si el usuario desliza mucho a la derecha en una categoría (ej. "Muebles"), le mostrará más artículos de esa categoría.  
* Interés temporal: El algoritmo detectará si el usuario está buscando algo concreto ahora mismo para darle prioridad, y dejaremos de mostrarlo cuando ya no le interese.

### **C. Factores de Calidad** 

Para que el usuario se fíe, le daremos una pequeña ayuda de visibilidad a ciertos productos:

* Fiabilidad: Los productos de vendedores con buenas reseñas o verificados saldrán antes.  
* Cercanía: Si el producto está cerca de su ubicación, tendrá prioridad para ahorrar en envíos.  
* Precio: Las ofertas o precios competitivos también ayudarán a que el producto salga antes.

### **D. Lógica de "serendipia"**

Esta es una parte clave de FlickIt y su algoritmo. No queremos que el usuario se aburra viendo siempre lo mismo. Para ellos usaremos distintos métodos:

* Factor sorpresa: De vez en cuando, meteremos productos que **no** tienen nada que ver con lo que el usuario suele buscar. El objetivo es que descubra cosas nuevas.  
* Equilibrio: Mantendremos una mezcla entre "lo que le gusta" y "cosas nuevas" para que el “deck” siempre parezca actualizado y llamativo.  
* Oportunidad a pequeños vendedores: Gracias a esta lógica, productos menos populares también tendrán oportunidad de salir en pantalla.

## **4.2 Límites del Sistema (Lo que no incluiremos)**

Para no meternos en el trabajo de los otros departamentos, aclaramos qué no hace nuestro algoritmo:

* No guardamos datos: La información de los productos y usuarios la recoge la base de datos.  
* No gestionamos el carrito: Nosotros solo detectamos el "swipe right" como un dato de interés para nuestro algoritmo.  
* No gestionamos envíos: Aunque priorizamos por cercanía, de la logística se encarga otro departamento. 

## **4.3 Entregables Principales**

* Documento de Heurística: La explicación detallada de las reglas que usamos para puntuar los productos (el archivo heurística serendipia.docx ).

* Diagrama de Flujo: Un esquema visual de cómo el algoritmo decide el orden de las tarjetas.

## **4.4 Criterios de Aceptación**

Para dar por bueno este módulo, debe cumplir (pruebas):

1. Reactividad: Si empiezo a dar "like" a muchas zapatillas, en la siguiente sesión me deben salir más zapatillas.  
2. Prueba de serendipia: De cada 10 o 20 productos, tiene que salir alguno aleatorio o diferente a mis gustos habituales para cumplir con el descubrimiento.  
3. Geolocalización: Si hay productos disponibles en mi ciudad, el algoritmo debe intentar mostrarlos antes que los de fuera.  
4. Prueba de Seguridad/Fiabilidad: No debe aparecer ningún producto cuyo vendedor tenga una fiabilidad por debajo del mínimo establecido (evitar posibles estafas).

