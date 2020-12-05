<?php
require_once "functions.php";

if($_SERVER["REQUEST_METHOD"] == "POST"){
    $user_id = $_POST['user_id'];
    $item_id = $_POST['item_id'];
    $last_vote = vote($user_id, $item_id);
    if($last_vote > 0){
        $votes = get_votes();
        $total_vote = get_total_votes();
    }

    echo json_encode(['votes' => $votes, 'total' => $total_vote]);
}