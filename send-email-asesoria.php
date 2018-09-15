<?php
// Checks if form has been submitted
require 'vendor/phpmailer/phpmailer/PHPMailerAutoload.php';

function post_captcha($user_response) {
    $fields_string = '';
    $fields = array(
        'secret' => '6Lcx_G8UAAAAALAhI4We9TNpiotvHtlo5HuFtCgS',
        'response' => $user_response
    );
    foreach($fields as $key=>$value)
    $fields_string .= $key . '=' . $value . '&';
    $fields_string = rtrim($fields_string, '&');

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, 'https://www.google.com/recaptcha/api/siteverify');
    curl_setopt($ch, CURLOPT_POST, count($fields));
    curl_setopt($ch, CURLOPT_POSTFIELDS, $fields_string);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, True);

    $result = curl_exec($ch);
    curl_close($ch);

    return json_decode($result, true);
}

// Call the function post_captcha
$res = post_captcha($_POST['g-recaptcha-response']);

if (!$res['success']) {
    // What happens when the CAPTCHA wasn't checked
    echo '<p>Please go back and make sure you check the security CAPTCHA box.</p><br>';
} else {
    // If CAPTCHA is successfully completed...
    $mail = new PHPMailer;
    // send email
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
    $mail->addAddress('ventas@texturplast.com', 'Administrador');     // Add a recipient
    
    
    $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
    $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->CharSet = 'UTF-8';
    
    $mail->Subject = 'Nueva solicitud de contacto texturplast.com/';
    $mail->Body    = 'Nuevo mensaje de contacto de texturplast.com/ <strong>'
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
    }
    echo '<br><p>CAPTCHA was completed successfully!</p><br>';
}
?>