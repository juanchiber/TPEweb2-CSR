<?php
require_once './libs/Router.php';
require_once './app/controllers/product.controller.php';

// crea el router
$router = new router();

// defina la tabla de ruteo
$router->addRoute('products', 'GET', 'productApiController', 'getProducts');
$router->addRoute('products/:ID', 'GET', 'productApiController', 'getProduct');
$router->addRoute('products/:ID', 'DELETE', 'productApiController', 'deleteProduct');
$router->addRoute('products', 'POST', 'productApiController', 'addProduct'); 
$router->addRoute('products/:ID', 'PUT', 'productApiController', 'updateProduct'); 

// ejecuta la ruta (sea cual sea)
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);