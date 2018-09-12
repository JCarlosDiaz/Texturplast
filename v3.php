<?php
// Checks if form has been submitted
require 'vendor/phpmailer/phpmailer/PHPMailerAutoload.php';

function post_captcha($user_response) {
    $fields_string = '';
    $fields = array(
        'secret' => '6LeaOmQUAAAAALnNHYcTyyxCH9RMnk7hMvgXExWw',
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

    // send email
    $mail = new PHPMailer;

    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $message = $_POST['message'];
    $tipoEvento = $_POST['tipoEvento'];
    $evento = $_POST['detalleEvento'];
    $fechaEvento = $_POST['fechaDeseada'];
    $today = isset($_POST['fechaDeseada']) ? $_POST['fechaDeseada'] : (new DateTime)->format('Y-m-d');
    $date = date('Y-m-d', strtotime($today));
    
    $fechaEstablecida = $_POST['noFecha'];
    echo $fechaEstablecida;
    
    if (isset($_POST['noFecha'])) {
        $fechaDefinida = true;
    } else {
        $fechaDefinida = false;
    }
    echo $fechaDefinida;
    
    $mail->setFrom('website@dreamevents.mx', 'Contacto');
    $mail->addAddress('ventas@dreamevents.mx', 'Administrador');     // Add a recipient
    
    
    $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
    $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->CharSet = 'UTF-8';
    
    $mail->Subject = 'Nueva solicitud de contacto dreamevents.mx';
    if ($fechaDefinida == 1){
        $mail->Body    = 'Nuevo mensaje de contacto de dreamevents.mx por parte de: <strong>'
        .$name.'  ('.$email.')</strong><br>El mensaje es el siguiente<br><br><strong>
        Nombre: '.$name.'<br>
        Correo: '.$email.'<br>
        Teléfono: '.$phone.'<br>
        Tipo de Evento: '.$tipoEvento.'<br>
        Evento especifico: '.$evento.'<br>
        Fecha: NO ESPECIFICA FECHA <br>
        Comentarios: '.$message.'</strong><br><br> 
        Contactar a la brevedad posible';
    }else{
        $mail->Body    = 'Nuevo mensaje de contacto de dreamevents.mx <strong>'
        .$name.'  ('.$email.')</strong><br>El mensaje es el siguiente<br><br><strong>
        Nombre: '.$name.'<br>
        Correo: '.$email.'<br>
        Teléfono: '.$phone.'<br>
        Tipo de Evento: '.$tipoEvento.'<br>
        Evento especifico: '.$evento.'<br>
        Fecha: '.$date.'<br>
        Comentarios: '.$message.'</strong><br><br> 
        Contactar a la brevedad posible';
    }
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
