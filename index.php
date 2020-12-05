<?php
require_once "functions.php";
// Initialize the session
session_start();

// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        body{ font: 14px sans-serif; text-align: center; }
        img {
            max-width: 100%;
        }
        .result {
            width: 100%;
            height: 100px;
            background: deepskyblue;
            display: none;
        }
    </style>
</head>
<body>
<div class="page-header">
    <h1>Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Please vote for the US president.</h1>
    <div class="container">
        <form action="/">
        <div class="row">
            <?php
            $items = get_items();
            foreach($items as $item):
            ?>
            <div class="col-md-4">
                <div class="card" style="">
                    <img class="card-img-top" src="<?php echo $item['image']; ?>" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $item['title']; ?></h5>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input vote" name="vote" data-item-id="<?php echo $item['id']; ?>">
                                <p>Vote</p>
                                <p class="result_num" data-id="<?php echo $item['id']; ?>"></p>
                                <div class="result" data-id="<?php echo $item['id']; ?>"></div>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <?php endforeach; ?>
        </div>
        </form>
    </div>
</div>
<p>
    <a href="logout.php" class="btn btn-danger">Sign Out of Your Account</a>
</p>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script type="text/javascript">
    <?php //vote(1,2) ?>
    $(function() {
        console.log( "ready!" );
        $(".vote").each(function () {
            $(this).click(function () {
                var user_id = <?php echo $_SESSION["id"]; ?>;
                var item = $(this).attr('data-item-id');
                $.ajax({
                    type: "POST",
                    url: "vote.php",
                    data: {user_id: user_id, item_id: item},
                    success: function (rs) {
                        var votes = rs.votes;
                        var total = rs.total.total;
                        votes.forEach(myFunction, total)
                    },
                    dataType: 'json'
                });
            });
        });

        function myFunction(item) {
            var total = this.valueOf();

            $('.result_num').each(function () {
                var c_item_id = $(this).attr('data-id');
                if(c_item_id == item.id){
                    $(this).text(item.votes);
                }
                $(this).fadeIn();
            });

            $('.result').each(function () {
                var c_item_id = $(this).attr('data-id');
                var percent = item.votes/total*100;
                console.log(percent)
                if(c_item_id == item.id){
                    $(this).css("height", percent + 'px');
                }
                $(this).fadeIn();
            });
            $(".vote").prop( "disabled", true );
        }
    });
</script>
</body>
</html>