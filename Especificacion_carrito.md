

| \[Identificador\] | Seleccionar productos |  |
| :---- | :---- | :---- |
| **Descripción** | El cliente selecciona o deselecciona uno o varios productos para decidir cuáles serán incluidos en la compra final. La selección afecta el monto total y los ítems que se procesarán durante el pago. |  |
| **Actores** | Cliente |  |
| **Pre condiciones** | El cliente tiene productos previamente agregados al carrito. El sistema muestra la lista de productos en el carrito. Cada producto cuenta con un control de selección (checkbox, switch o equivalente).  |  |
| **Post condiciones** | El estado de selección/deselección de los productos queda registrado en el carrito. |  |
| **Secuencia Normal** | **\#** | **Acción** |
|  | 1 | El cliente selecciona/deselecciona un producto marcando su casilla correspondiente. |
|  | 2 | El cliente puede seguir seleccionando/deseleccionando otros productos. |
|  | 3 | El caso de uso finaliza cuando el cliente ha terminado de seleccionar los productos deseados. |
| **Excepciones** | \# | **Acción** |
|  | 1 | En el caso de que no haya productos en el carrito el sistema deberá mostrar un mensaje indicando que el carrito está vacío. El caso termina, no se puede seleccionar ningún producto. |

| \[Identificador\] | Eliminar producto |  |
| :---- | :---- | :---- |
| **Descripción** | El cliente elimina un producto del carrito mediante el botón “Eliminar” asociado a cada ítem. Al eliminarlo, el producto deja de mostrarse en el carrito. |  |
| **Actores** | Cliente |  |
| **Pre condiciones** | El cliente tiene uno o más productos agregados al carrito. El sistema muestra la lista de productos con su respectivo botón de eliminar. |  |
| **Post condiciones** | El producto seleccionado es removido del carrito. |  |
| **Secuencia Normal** | **\#** | **Acción** |
|  | 1 | El cliente pulsa el botón **Eliminar** en un producto. |
|  | 2 | El sistema elimina el producto del carrito. |
|  | 3 | El sistema actualiza la lista de productos mostrada. |
| **Excepciones** | \# | **Acción** |
|  | 1 | En el caso de que el carrito esté vacío el sistema deberá mostrar un mensaje indicando que el carrito está vacío. El caso termina, no se puede seleccionar ningún producto. |

| \[Identificador\] | Pagar |  |
| :---- | :---- | :---- |
| **Descripción** | El cliente inicia el proceso de compra desde el carrito, revisa su pedido, completa los datos necesarios y finalmente es redirigido a una pasarela de pago externa para completar el pago. |  |
| **Actores** | Cliente, Pasarela de pago |  |
| **Pre condiciones** | El cliente tiene uno o más productos **seleccionados** para la compra. |  |
| **Post condiciones** | El sistema genera una solicitud hacia la pasarela de pago con los datos del pedido. Si se acepta el pago, el carro se vacía |  |
| **Secuencia Normal** | **\#** | **Acción** |
|  | 1 | El cliente pulsa el botón **“Hacer un pedido”**. |
|  | 2 | El sistema muestra la pantalla **Pantalla de pago**, incluyendo: Productos seleccionados Cantidades Precio total |
|  | 3 | El cliente completa los datos requeridos |
|  | 4 | El cliente pulsa el botón **“Pagar”**. |
|  | 5 | El sistema redirige al cliente a la **pasarela de pago**. |
|  | 6 | La pasarela de pago toma control del proceso. |
| **Excepciones** | \# | **Acción** |
|  | p | En el caso de que no haya productos seleccionados el sistema deberá mostrar un mensaje de error |

| \[Identificador\] | Actualizar base de datos |  |
| :---- | :---- | :---- |
| **Descripción** | Describe el proceso mediante el cual se realizan las operaciones necesarias en la base de datos para mantener la coherencia, integridad y actualización de la información, como resultado de acciones realizadas en otros casos de uso. Incluye cualquier operación que implique inserción, modificación o eliminación de datos,  independientemente del contexto en el que ocurra. |  |
| **Actores** | Base de datos |  |
| **Pre condiciones** | El sistema ha recibido una solicitud válida de actualización desde otro caso de uso. La base de datos está disponible y accesible. Los datos proporcionados cumplen con los requisitos mínimos de integridad (formatos válidos, tipos correctos, etc.). |  |
| **Post condiciones** | Los datos se han actualizado correctamente en la base de datos según la operación requerida. La información almacenada refleja el estado actual del sistema. La integridad y coherencia de los datos se mantienen. |  |
| **Secuencia Normal** | **\#** | **Acción** |
|  | 1 | Un caso de uso o proceso interno genera una solicitud de actualización. |
|  | 2 | El sistema recibe la solicitud y determina el tipo de operación necesaria |
|  | 3 | El sistema ejecuta la operación correspondiente en la base de datos. |
| **Excepciones** | \# | **Acción** |
|  | 1 | Los datos no pasan las validaciones (duplicados, restricciones, referencias inexistentes, etc.). El sistema rechaza la operación y notifica al proceso solicitante. El caso termina sin cambios en la BD. |
|  | 2 | Los datos recibidos están incompletos o en un formato incorrecto. El sistema rechaza la operación. El proceso solicitante es informado para que reenvíe los datos correctos. |

