<?php
/*--------------------------------------------------------------
# send-email-phpmailer.php
#
# File for sending emails with PHPMailer
# We recommend using service like Mailgun for sending transactional emails.
--------------------------------------------------------------*/

# Include the Autoloader (see "Libraries" for install instructions)
require 'vendor/phpmailer/phpmailer/PHPMailerAutoload.php';
require 'dbconnect.php';


$mail = new PHPMailer;

$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$correo = $_POST['correo'];
$telefono = $_POST['telefono'];
$mensaje = $_POST['pregunta'];
$estado = $_POST['estado'];
$codigo = $_POST['codigo'];

if (isset($_POST['newsletter'])) {
    $inscrito = true;
} else {
    $inscrito = false;
}

$mail->setFrom('website@texturplast.com', 'Contacto');
$mail->addAddress('none@existant.com', 'Administrador');     // Add a recipient


$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
$mail->isHTML(true);                                  // Set email format to HTML

$mail->Subject = 'Nueva solicitud de contacto gofishingcancun.com';
$mail->Body    = 'Nuevo mensaje de contacto de <strong>'
.$nombre.'  ('.$correo.')</strong><br>El mensaje es el siguiente<br><br><strong>
Nombre: '.$nombre.'<br>
Apellido : '.$apellido.'<br>
Correo: '.$correo.'<br>
Teléfono: '.$telefono.'<br>
Estado: '.$estado.'<br>
CP: '.$codigo.'<br>
Mensaje: '.$mensaje.'</strong><br><br> 
Contactar a la brevedad posible';
$mail->AltBody = $mensaje;

if(!$mail->send()) {
    echo 'Message could not be sent.';
    echo 'Mailer Error: ' . $mail->ErrorInfo;
} else {
    echo 'Message has been sent';
    if ($inscrito == true){
        $sql = "INSERT INTO usuarios (nombre, apellido, estado, codigo, correo) 
        VALUES ('$nombre','$apellido','$estado','$codigo','$correo')";

        if ($conn->query($sql) === TRUE) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
        $conn->close();
    }
}
