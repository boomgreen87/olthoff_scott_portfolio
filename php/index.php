<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>PHP Contact Form</title>
</head>

<body>
    <h2>Contact</h2>

    <form action="data/contact.php" method="post">
        <label for="firstName">First Name</label>
        <input id="firstName" type="text" name="firstName" placeholder="First Name" required>

        <label for="lastName">Last Name</label>
        <input id="lastName" type="text" name="lastName" placeholder="Last Name" required>

        <label for="email">Email</label>
        <input id="email" type="email" name="email" placeholder="Email" required>

        <label for="subject">Subject</label>
        <input id="subject" type="text" name="subject" placeholder="Subject" required>

        <label for="message">Message</label>
        <textarea id="message" name="message"></textarea required>

        <button type="submit">Submit</button>
    </form>
</body>
</html>