<?php
    require "dbCon.php";
    $iduser = $_GET['iduser'];
    $status = $_GET['status'];
    if($status == 2){
        $query = "SELECT receipt.productID, receipt.userID, product.name, productImg, concat(author.name, ', ') as authorname, status
                FROM user
                RIGHT JOIN receipt ON user.id = receipt.idUser 
                LEFT JOIN product ON idProduct = product.id
                LEFT JOIN authordetail ON product.id = authordetail.idProduct
                LEFT JOIN author ON authordetail.idAuthor = author.id
                WHERE user.id = '$iduser'
                GROUP BY receipt.idProduct";
    }else{
        $query = "SELECT receipt.productID, receipt.userID, product.name, productImg, concat(author.name, ', ') as authorname, status
                FROM user
                RIGHT JOIN receipt ON user.id = receipt.idUser 
                LEFT JOIN product ON idProduct = product.id
                LEFT JOIN authordetail ON product.id = authordetail.idProduct
                LEFT JOIN author ON authordetail.idAuthor = author.id
                WHERE status = $status AND user.id = '$iduser'
                GROUP BY receipt.idProduct";
    }
    $data = mysqli_query($connect, $query);
    
    class Product{
        public $idProduct;
        public $idUser;
        public $name;
        public $productImg;
        public $authorname;
        public $status;
        public function __construct($idProduct, $idUser, $name, $productImg, $authorname, $status){
            $this->idProduct = $idProduct;
            $this->idUser = $idUser;
            $this->name = $name;
            $this->productImg = $productImg;
            $this->authorname = $authorname;
            $this->status = $status;
        }
    }

    $mangProduct = array();
    while($row = mysqli_fetch_assoc($data)){
        $pd = new Product($row['idProduct'], $row['idUser'], $row['name'], $row['productImg'], $row['authorname'], $row['status']);
        $mangProduct[] = $pd;
    }

    echo json_encode($mangProduct);
?>