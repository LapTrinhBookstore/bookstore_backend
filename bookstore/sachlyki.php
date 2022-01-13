<?php
    require "dbCon.php";

    $query = "SELECT id, productImg, name, price
                FROM product INNER JOIN typedetail ON product.id = typedetail.idBook
                WHERE idType = 'BT00000001' OR idType = 'BT00000002'
                GROUP BY id";
    $data = mysqli_query($connect, $query);
    
    class Product{
        public $id;
        public $productImg;
        public $name;
        public $price;
        public function __construct($id, $productImg, $name, $price){
            $this->id = $id;
            $this->productImg = $productImg;
            $this->name = $name;
            $this->price = $price;
        }
    }

    $mangProduct = array();
    while($row = mysqli_fetch_assoc($data)){
        $pd = new Product($row['id'], $row['productImg'], $row['name'], $row['price']);
        $mangProduct[] = $pd;
    }

    echo json_encode($mangProduct);
?>