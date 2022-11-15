<?php

class productModel {

    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_producto;charset=utf8', 'root', '');
    }

    //Devuelve lista de productos completa.
    public function getAllProducts() {

        $query = $this->db->prepare("SELECT producto.*, categoria.* FROM producto INNER JOIN categoria ON producto.id_category = categoria.id_category");
        $query->execute();
        $products = $query->fetchAll(PDO::FETCH_OBJ); 
        
        return $products;
    }

    /*
    public function orderBy($sort, $order){
        $query = $this->db->prepare("SELECT producto.*, categoria.* FROM producto INNER JOIN categoria ON producto.id_category = categoria.id_category ORDER BY $sort $order");
        $query->execute();

        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    public function pagination($limit, $offset){
        $query = $this->db->prepare("SELECT producto.*, categoria.* FROM producto INNER JOIN categoria ON producto.id_category = categoria.id_category LIMIT $limit OFFSET $offset");
        $query->execute();

        return $query->fetchAll(PDO::FETCH_OBJ);

    }
    */

    
    public function getAllByField($orderByField, $order, $limit, $page, $field, $fieldValue){
        $offset = ($limit * $page) - $limit;
        $params = []; 
        $query = "SELECT producto.*, categoria.* FROM producto INNER JOIN categoria ON producto.id_category = categoria.id_category WHERE  `$field` LIKE '$fieldValue%' ORDER BY $orderByField $order LIMIT $limit OFFSET $offset";
        //array_push($params, $fieldValue);
        $querydb = $this->db->prepare($query);
        $querydb->execute();
        
        return $querydb->fetchAll(PDO::FETCH_OBJ); 
    }
    
    public function getAll($orderByField, $order, $limit, $page){
        $offset = ($limit * $page) - $limit;
        $query = $this->db->prepare("SELECT producto.*, categoria.* FROM producto INNER JOIN categoria ON producto.id_category = categoria.id_category ORDER BY $orderByField $order LIMIT $limit OFFSET $offset");
        $query->execute();
        
        return $query->fetchAll(PDO::FETCH_OBJ);
    }
    
    public function getProduct($id){
        $query = $this->db->prepare("SELECT producto.*, categoria.* FROM producto INNER JOIN categoria ON producto.id_category = categoria.id_category WHERE producto.id_product = ?");
        $query->execute([$id]);
        $product = $query->fetch(PDO::FETCH_OBJ);
        
        return $product;
    }
    
    public function filterBy($fieldValue){
        $query = $this->db->prepare("SELECT producto.*, categoria.* FROM producto INNER JOIN categoria ON producto.id_category = categoria.id_category WHERE category = $fieldValue");
        $query->execute();

        return $query->fetchAll(PDO::FETCH_OBJ);
    }
    
    public function insertProduct($product, $detail, $price, $id_category) {
        $query = $this->db->prepare("INSERT INTO producto (product, detail, price, id_category) VALUES (?, ?, ?, ?)");
        $query->execute([$product, $detail, $price, $id_category]);

        return $this->db->lastInsertId();
    }

    public function deleteProductById($id) {
        $query = $this->db->prepare('DELETE FROM producto WHERE id_product = ?');
        $query->execute([$id]);
    }

    public function updateProductById($id, $product, $detail, $price, $id_category){
        $query = $this->db->prepare("UPDATE producto SET product = ?, detail = ?, price = ?, id_category = ?  WHERE id_product = ?");
        $query->execute([$product, $detail, $price, $id_category, $id]);
    }

}
