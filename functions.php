<?php
require_once "config.php";

function get_items(){
    global $pdo;
    $sql = "SELECT id, title, image FROM items";
    $result = $pdo->query($sql);

    return $result->fetchAll();
}

function vote($user_id, $item_id){
    global $pdo; $rs = null;
    $sql = "INSERT INTO votes (user_id, item_id) VALUES (:user_id, :item_id)";
    if($stmt = $pdo->prepare($sql)){
        // Bind variables to the prepared statement as parameters
        $stmt->bindParam(":user_id", $param_user_id, PDO::PARAM_STR);
        $stmt->bindParam(":item_id", $param_item_id, PDO::PARAM_STR);

        // Set parameters
        $param_user_id = $user_id;
        $param_item_id = $item_id;
        $rs = $stmt->execute();
        // Close statement
        unset($stmt);
    }

    return $pdo->lastInsertId();
}

function get_votes(){
    global $pdo;
    $sql = "SELECT items.title, items.id, count(votes.id) as votes from items
                INNER JOIN votes ON items.id = votes.item_id
                GROUP BY item_id;";
    $result = $pdo->query($sql);

    return $result->fetchAll();
}

function get_total_votes(){
    global $pdo;
    $sql = "SELECT count(*) as total from votes";
    $result = $pdo->query($sql);

    return $result->fetch();
}