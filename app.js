const express = require('express');
const path = require('path');
const hbs = require('hbs');
const bodyParser = require('body-parser');
const nodemailer = require('nodemailer');

// set the port
const port = process.env.PORT || 3000;

const app = express();

app.use(express.static(path.join(__dirname, '/public')));
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'views'));

app.use('/', require('./routes/index'));

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

// Sends email when contact form is submitted
app.post('/contact', (req, res) => {

    // // Instantiate the SMTP server
    // const smtpTrans = nodemailer.createTransport({
    //     host: 'smtp.gmail.com',
    //     port: 465,
    //     secure: true,
    //     auth: {
    //     user: "contactscottolthoff@gmail.com",
    //     pass: "mightyducks93"
    //     }
    // })
  
    // // Specify what the email will look like
    // const mailOutput = {
    //     from: "noreply@scottolthoff.ca", // This is ignored by Gmail
    //     to: "scottolthoff@yahoo.com",
    //     subject: 'New Message From scottolthoff.ca',
    //     text: `Message From: ${req.body.firstName} ${req.body.lastName} (${req.body.email})\nSubject: ${req.body.subject}\n${req.body.message}`
    // }
  
    // // Attempt to send the email
    // smtpTrans.sendMail(mailOutput, (error, response) => {
    //     if (error) {
    //     console.log(error);
    //     res.render("home", {msg: "Error"});
    //     }
    //     else {
    //     console.log(mailOutput);
    //     res.render("home", {msg: "Message was sent!"});
    //     }
    // })

    var transporter = nodemailer.createTransport({
        service: 'gmail',
        auth: {
               user: 'contactscottolthoff@gmail.com',
               pass: 'mightyducks93'
           }
    });

    const mailOptions = {
        from: 'noreply@scottolthoff.ca', // sender address
        to: 'scottolthoff@yahoo.com', // list of receivers
        subject: `${req.body.subject}`, // Subject line
        html: `${req.body.message}`// plain text body
    };

    transporter.sendMail(mailOptions, function (err, info) {
        if(err)
            res.send({msg: "Error"});
        else
            res.send({msg: "Message was sent!"});
    });
})

app.use((req, res, next) => {
    var err = new Error("-Error 404-");
    err.customMessage = "You have entered the void";

    next(err);
})

app.use((err, req, res, next) => {
    res.render("error", { data: err, layout: "errorPage"});
})

app.listen(port, () => {
    console.log(`app is running on ${port}`);
})