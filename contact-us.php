<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style/styles.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <title>Na kontaktoni</title>
    <link rel="icon" type="image/png" href="img/logo.png">
</head>

<body>
<?php 
        $link = mysqli_connect("localhost", "root", "", "cinema_db");
?>
    <header></header>
    <div class="gmap_canvas"><iframe id="gmap_canvas" src="https://maps.google.com/maps?q=BUE&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
    </div>
    <div class="contact-us-container">
        <div class="contact-us-section contact-us-section1">
            <h1>Kontakti</h1>
            <p>Na kontaktoni ketu </p>
            <form action="" method="POST">
                <input placeholder="First Name" name="fName" required><br>
                <input placeholder="Last Name" name="lName" ><br>
                <input placeholder="E-mail Address" name="eMail" required><br>
                <textarea placeholder="Enter your message !" name="feedback" rows="10" cols="30" required></textarea><br>
                <button type="submit" name="submit" value="submit">Dergoni nje mesazh</button>
                <?php
                    if(isset($_POST['submit'])){
                        $insert_query = "INSERT INTO 
                        feedbackTable ( senderfName,
                                        senderlName,
                                        sendereMail,
                                        senderfeedback)
                        VALUES (        '".$_POST["fName"]."',
                                        '".$_POST["lName"]."',
                                        '".$_POST["eMail"]."',
                                        '".$_POST["feedback"]."')";
                        mysqli_query($link,$insert_query);
                        }
                    ?>
            </form>
            
        </div>
        <div class="contact-us-section contact-us-section2">
            <h1>Adresa & Informata</h1>
            <h3>Numri i telefonit</h3>
            <p><a href="tel:03850550555">038 50 550 555</a><br>
                <a href="tel:38345255255">+383 45 255 255</a></p>
            <h3>Adresa</h3>
            <p>Prishtine, Lagjja "Kalabria" , Prishtine 10000 </p>
            <h3>E-mail</h3>
            <p><a href="mailto:movie-ticket-booking@ubt-uni.net">movie-ticket-booking@ubt-uni.net</a></p>
        </div>
    </div>
    <footer></footer>
    <script src="scripts/jquery-3.3.1.min.js "></script>
    <script src="scripts/owl.carousel.min.js "></script>
    <script src="scripts/script.js "></script>
</body>

</html>