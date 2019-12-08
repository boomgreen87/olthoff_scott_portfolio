<?php

// Debugging
// var_dump($_POST['firstName']);
// var_dump($_GET);

if(empty($_POST)){
    echo 'Please enter your information';
    exit;
}

// Validate all data
$firstName = "";
$lastName = "";
$email = "";
$subject = "";
$message = "";
$recipient = "s_olthoff2@fanshaweonline.ca";

if(isset($_POST['firstName'])) {
    $firstName = filter_var($_POST['firstName'], FILTER_SANITIZE_STRING);
}

if(isset($_POST['lastName'])) {
    $lastName = filter_var($_POST['lastName'], FILTER_SANITIZE_STRING);
}

if(isset($_POST['email'])) {
    $email = str_replace(array("\r", "\n", "%0a", "%0d"), '', $_POST['email']);
    $email = filter_var($_POST,FILTER_VALIDATE_EMAIL);
}

if(isset($_POST['subject'])) {
    $subject = filter_var($_POST['subject'], FILTER_SANITIZE_STRING);
}

if(isset($_POST['message'])) {
    $message = $_POST['message'];
}

// Send out email
$headers = array(
    'From' => 'noreply@test.ca',
    'Reply-To' => $firstName.'<'.$email.'>'
);

if(mail($recipient, $subject, $message, $headers)){
    echo '<p>Thank you for contating us, '.$firstName.'</p>';
}else{
    echo '<p>We are sorry but the email did not go through</p>';
}