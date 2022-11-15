# API REST para gestionar y listar PRODUCTOS de un comercio 
Una API REST sencilla para manejar un CRUD de productos


## IMPORTAR BASE DE DATOS
La base de datos se debe importar desde PHPMyAdmin (o cualquiera) database/db_producto.php


## PRUEBA CON POSTMAN
El endpoint de la API es: http://localhost/web2/TPE2-CSR/growshop/api/products


## METODOS API
Esta API fue creada para ofrecer un servicio RESTFull, y trabaja utilizando los siguientes metodos HTTP:

• GET: Accede a los recursos (productos).
• POST: Agrega un nuevo recurso.
• PUT: Actuliza/modifica un recurso ya existente.
• DELETE: Elimina un recurso.

El formato de transferencia que admite esta API para enviar y recibir respuestas es JSON.


## ENDPOINTS
Los diferentes endpoints que ofrece la API son los siguientes:

• Obtener TODOS los productos-> GET http://localhost/web2/TPE2-CSR/growshop/api/products

• Obtener UN producto-> GET http://localhost/web2/TPE2-CSR/growshop/api/products/:ID
(Especificar id en la url)

• Crear/agregar un nuevo producto-> POST http://localhost/web2/TPE2-CSR/growshop/api/products
Esta solicitud permite crear un nuevo producto y guardarlo en la base de datos. Para enviarlo a la misma, es necesario enviar JSON, especificando los campos correspondientes en el BODY de la solicitud. Por ejemplo:
{
    "product": "Nuevo producto",
    "detail": "•Especificaciones.",
    "price": 123,
    "id_category": 4
}

• Modificar/actualizar un producto existente-> PUT http://localhost/web2/TPE2-CSR/growshop/api/products/:ID
Dicha solicitud permite actualizar o modificar un producto YA EXISTENTE en la base de datos. Para modificarlo, es necesario usar JSON con los campos correspondientes y actualizados del producto en el BODY de la solicitud. Por ejemplo:
{
    "id_product": 121,
    "product": "Producto modificado",
    "detail": "•Detalle modificado",
    "price": 123,
    "id_category": 4,
    "category": "Parafernalia"
}


## PARAMETROS
La API cuenta con distintos parametros de busqueda para el filtrado, ordenamiento y paginado de los productos que se ofrecen. Los mismos son:

• orderByField-> se elije un campo para jerarquizar/ordenar los productos en base al mismo. Las opciones son "id_product", "product", "detail", "price", "id_category, y "category".

• order-> en base al campo elegido en "orderByField", en este campo se determina si los productos se ordenan de manera ascendente (asc) o descendente (desc).

• limit-> se especifica la cantidad de productos que se quieren visualizar como maximo.

• page-> de la mano con "limit", "page" da la opcion de seleccionar la pagina que se desea ver con el listado de productos.

• field-> ademas del ordenamiento que trae en primer lugar los productos especificados en ese campo, "field" permite filtrar los productos en base al campo que aqui se especifica. Las opciones son "id_product", "product", "detail", "price", "id_category, y "category".

• fieldValue-> aqui se especifica el valor del campo seleccionado en "field". El resultado traera SOLO los productos que cumplan con dichos parametros. 

En el caso de omitir algun campo, los parametros de consulta cuentan con un valor por defecto, por lo que las solicitudes GET devolveran los siguientes valores:

• orderByField-> "id_product".

• order-> "asc".

• limit-> 100.

• page-> 1.

• field-> null.

• fieldValue-> null.


## ORDENAMIENTO
Los resultados de las solicitudes GET se pueden ordenar agregando los parametros "orderByField" y "order". A continuacion se deja un ejemplo de una busqueda que ordene productos segun su id de manera ascendente:
http://localhost/web2/TPE2-CSR/growshop/api/products?order=asc&orderByField=id_product


## ORDENAMIENTO CON FILTRO
Ademas de la busqueda con el tipo de ordenamiento que agrupa en primer lugar los productos en base al campo especificado, existe por otro lado un tipo de busqueda con filtro, en la cual los resultados nos arrojaran UNICAMENTE los productos que compartan las especificaciones declaradas en los parametros "field" y "fieldValue". Como se marco anteriormente, las opciones del parametro "field" seran "id_product", "product", "detail", "price", "id_category, y "category". En cambio, el valor del parametro "fieldValue" dependera del campo elegido en "field". A continuacion se muestra un ejemplo de busqueda de productos ordenados de manera descendente por precio, donde el producto en si sea una "maceta":
http://localhost/web2/TPE2-CSR/growshop/api/products/?orderByField=price&order=desc&field=product&fieldValue=maceta


## PAGINACION
A los resultados de los tipos de ordenamientos explicados anteriormente, es posible paginarlos agregando un limite (limit) maximo de productos para visualizar, y la pagina (page) que se desea observar. A continuacion se deja un ejemplo en el que se buscan productos ordenados por su id de manera ascendente, donde su categoria sea Accesorios, y donde se visualicen los 5 primeros productos de la pagina 1:
http://localhost/web2/TPE2-CSR/growshop/api/products/?orderByField=id_product&order=asc&limit=5&page=1&field=category&fieldValue=Accesorios


## CODIGOS DE ERROR
Es posible que se cometan errores de tipeo u otros en las solicitudes que realiza. La API cuenta con errores especificos que se acompañan de un mensaje que los especifica. Los distintos tipos de errores son:
• 400 -> "Bad request". Solicitud incorrecta.

• 404 -> "Not found". Producto no encontrado.

• 500 -> "Internal Server Error". Error interno del servidor.


Por otro lado, la API cuenta tambien con mensajes de confirmacion, los mismos son:

• 200 => "OK". Solicitud correcta/aceptada.

• 201 => "Created". Producto agregado con exito.