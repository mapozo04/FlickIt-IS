_Escrito por: Yihao._ \
_Editado y subido al Github por: Miguel Pérez._
# Heurística Algorítmica
Tomando como ejemplo la heurística de aplicaciones populares ya establecidas como: Tinder o TEMU, los cuales son bastante interesantes como referencia gracias a su similitud en ciertos aspectos, podemos obtener ciertos puntos clave para el algoritmo de recomendación de productos en la pantalla de descubrimiento como: 
* **Personalización**
	* **Filtrado básico**: Según los gustos personalizados del usuarios (gustos y exclusiones) se mostrarán más o menos en su pantalla de descubrimientos. 
	* **Comparación activa**: según los gustos y los datos de preferencias recopiladas del usuario, se comparará con otros perfiles similares para completar un algoritmo más maduro y completo a la hora de recomendar, dando como resultado sugerencias mas diversas. 
	
* **Participación activa**
	* **Acciones e historial**: según el historial de swipes del usuario, además de las compras efectivas realizadas, se dará prioridad a las categorías de productos que más le interesen, dependiendo del tiempo en que se mantenga el interés del usuario, se considerará de mayor o menor prioridad 
	>ej. el usuario ha comprado una casa y quiere amueblarla, por eso se interesará más en muebles y decoraciones por un tiempo, pero una vez amueblado dejará de interesarse. 
	
* **Competitividad**
	* **Reseñas y fiabilidad**: Tendrán prioridad aquellos productos cuya calidad haya sido comprobada y los provenientes de proveedores y tiendas de confianza, pero no será uno de los factores principales a la hora de recomendar.
	> (Todavía tiene que comprobarse si la aplicación tendrá tales sistemas de calificación y fiabilidad, en cuyo caso si será efectivo.)
	* **Proximidad geográfica**: siempre que se pueda se mostrarán con prioridad aquellos productos más próximos al usuario, principalmente para ahorrar tiempos de entrega y precios de envío, haciendo recomendaciones más accesibles y a precios más competitivos. 
	* **Precio**: se mostrarán con prioridad aquellos productos con precios más competitivos y en oferta incitando la interacción y compra. 
	
#
# Serendipia (lógica de recomendación) 
**Serendipia**: fenómeno por el cual el usuario descubre productos inesperados que resultan valiosos o atractivos, sin haberlos buscado de manera explícita. 

En el contexto de FlickIt, la serendipia se convierte en un elemento diferenciador de la experiencia de compra, ya que el sistema no solo muestra artículos basados en preferencias personalizadas y u obtenidos mediante la heuristica algoritmica, sino que introduce productos aleatorios o complementarios que pueden sorprender positivamente al usuario, generando un impacto positivo que podemos vislumbrar en los siguientes puntos.

* **Valor añadido**: fomenta la curiosidad y la satisfacción al descubrir algo nuevo que no estaba planeado, incentivando al usuario a que siga usando la aplicación por mayores períodos de tiempo. 
* **Equilibrio con personalización**: el algoritmo combina recomendaciones basadas en el modelo de recomendación mencionado en la heurística con elementos aleatorios que está fuera de las categorías habituales del usuario para mantener frescura y novedad, evitando que el usuario se quede sin productos interesantes en su pantalla de descubrimientos; aunque también se tomarán en cuenta los gustos definidos por el usuario para evitar productos que no desea en caso de que esto genere un interés negativo en la aplicación. 
* **Fidelidad**: la sorpresa positiva genera un mayor enganche y sensación de logro, aumentando la probabilidad de que el usuario regrese a la aplicación a futuro. 
* **Mayor alcance**: permite que pequeños comercios o productos menos populares tengan visibilidad en la pantalla de descubrimientos
