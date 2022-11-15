<?php

require_once './app/models/product.model.php';
require_once './app/views/api.view.php';

class productApiController {
    private $model;
    private $view;
    private $data;

    public function __construct() {
        $this->model = new productModel();
        $this->view = new apiView();

        // lee el body del request
        $this->data = file_get_contents("php://input");
        $this->limitDefault = 100;
    }

    private function getData() {
        return json_decode($this->data);
    }

    public function getProducts($params = null){
        try{
            $orderByField= $_GET['orderByField'] ?? "id_product";
            $order= $_GET['order'] ?? "asc";
            $limit= $_GET['limit'] ?? 100;
            $page= $_GET['page'] ?? 1;
            $field= $_GET['field'] ?? null;
            $fieldValue= $_GET['fieldValue'] ?? null;

            $products= 0;
            $this->verifyParams($orderByField, $order, $limit, $page, $field, $fieldValue);

            if(($field != null) && ($fieldValue != null)){
                $products = $this->model->getAllByField($orderByField, $order, $limit, $page, $field, $fieldValue);
            }
            else if(($field == null) && ($fieldValue == null)){
                $products = $this->model->getAll($orderByField, $order, $limit, $page);
            }

            if($products){
                return $this->view->response($products, 200);
            }   
            else{
                $this->view->response("No existen productos para su solicitud", 404);
            }
            
        }
        catch(Exception $e){
            $this->view->response("Internal server error", 500);
        }
        
    }

    private function verifyParams($orderByField, $order, $limit, $page, $field, $fieldValue) {
        $columns = [
            "id_product", 
            "product", 
            "detail", 
            "price", 
            "id_category", 
            "category"
        ];

        if ($field != null && !in_array(strtolower($field), $columns)) {
            $this->view->response("La columna ingresada '$field' es incorrecta. Por favor reintente ingresando '$columns[0]', '$columns[1]', '$columns[2]', '$columns[3]', '$columns[4]' o '$columns[5]'", 400);
            die;
        }

        if ($field != null && $fieldValue == null) {
            $this->view->response("Columna de filtro de parametro de consulta incorrecta o nula. Intente nuevamente", 400);
            die;
        }

        if ($orderByField != null && !in_array(strtolower($orderByField), $columns)) {
            $this->view->response("El parametro ingresado '$orderByField' no existe. Intente nuevamente.", 400);
            die;
        }

        if ($order != null && $order != "asc" && $order != "desc") {
            $this->view->response("El parametro de orden '$order' no existe. Ingrese 'asc' o 'desc'", 400);
            die;
        }

        if ($page != null && (!is_numeric($page) || $page <= 0)) {
            $this->view->response("El parametro ingresado '$page' es incorrecto. Ingrese un valor numerico mayor a 0", 400);
            die;
        }

        if ($limit != null && (!is_numeric($limit) || $limit <= 0)) {
            $this->view->response("El parametro ingresado '$limit' es incorrecto. Ingrese un valor numerico mayor a 0", 400);
            die;
        }

        if($orderByField == null || $order == null || $limit == null || $page == null){
            $this->view->response("Complete todos los campos", 400);
            die;
        }
    }
    
    public function getProduct($params = null){
        $id = $params[':ID'];
        $product= $this->model->getProduct($id);
        
        if ($product){
            $this->view->response($product);
        }
        else{
            $this->view->response("El producto con el id=$id no existe", 404);
        }     
    }

    public function deleteProduct($params = null) {
        $id = $params[':ID'];
        $product = $this->model->getProduct($id);

        if ($product){
            $this->model->deleteProductById($id);
            $this->view->response("El producto se eliminó con éxito");
        } 
        else{
            $this->view->response("El producto con el id=$id no existe", 404);
        }
    }

    public function addProduct($params = null) {
        $product = $this->getData();

        if (empty($product->product) || empty($product->detail) || empty($product->price) || empty($product->id_category)) {
            $this->view->response("Complete todos los campos. Los mismos son 'product', 'detail', 'price', 'id_category' y 'category'.", 400);
        } 
        else {
            $id = $this->model->insertProduct($product->product, $product->detail, $product->price, $product->id_category);
            $product = $this->model->getProduct($id);
            $this->view->response("Producto agregado con exito");
            $this->view->response($product, 201);
        }
    }

    function updateProduct($params = null) {
        $id = $params[':ID'];
        $product = $this->getData();
        $productById = $this->model->getProduct($id);
        if (empty($product->id_product) ||empty($product->product) || empty($product->detail) || empty($product->price) || empty($product->id_category)){
            $this->view->response("Complete los datos", 400);
        }
        else {
            $newProduct = $product->product;
            $detail = $product->detail;
            $price = $product->price;
            $id_category = $product->id_category;
            
            if($productById) {
                $this->model->updateProductById($id, $newProduct, $detail, $price, $id_category);
                $updateProduct = $this->model->getProduct($id); //esto es para traerme de la db el producto actualizado
                $this->view->response("Producto id = $id actualizado con éxito", 200); 
                $this->view->response($updateProduct, 200);
            }
            else {
                $this->view->response("La tarea con el id=$id no existe", 404);
            }
        }
    }   

    
}