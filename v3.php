<?php
// Checks if form has been submitted
require 'vendor/phpmailer/phpmailer/PHPMailerAutoload.php';
include 'db/connect.php';
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
    $name = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $email = $_POST['correo'];
    $phone = $_POST['telefono'];
    $estado = $_POST['estado'];
    $codigo = $_POST['codigo'];
    $productoC = $_POST['producto-categoria'];
    $productoP = $_POST['producto-producto'];
    $area = $_POST['area'];
    $message = $_POST['mensaje'];
    $radio = $_POST['radio-2'];
        
    if (isset($_POST['checkbox-5'])) {
        $inscrito = true;
        $db->Consultar("INSERT INTO clientes (nombre, apellido, correo, telefono, estado, cp) 
            VALUES ('$name','$apellido','$email','$phone','$estado','$codigo')");
        // if($inscrito = true){
            
        // }
        echo "entro en activo";
    } else {
        $inscrito = false;
        echo "no entro";
    } 
    
    $mail->setFrom('website@texturplast.com', 'Contacto');
    $mail->addAddress('angelfcancun@gmail.com', 'Administrador');     // Add a recipient
    
    
    $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
    $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->CharSet = 'UTF-8';
    
    $mail->Subject = 'Nueva solicitud de contacto texturplast.com/';
    $mail->Body    = 'Nuevo mensaje de contacto de texturplast.com/ <strong>'
    .$name.'  ('.$email.')</strong><br>El mensaje es el siguiente<br><br><strong>
        Nombre: '.$name.'<br>
        Apellido: '.$apellido.'<br>
        Correo: '.$email.'<br>
        Teléfono: '.$phone.'<br>
        Estado: '.$estado.'<br>
        CP: '.$codigo.'<br>
        Categoria del Producto: '.$productoC.'<br>
        Producto: '.$productoP.'<br>
        Área estimada de uso : '.$area.'<br>
        Comprobante de compra : '.$radio.'<br>
        Descripción del Problema: '.$message.'</strong><br> 
        Contactar a la brevedad posible';
    
    // if($inscrito = true){
    //         $db->Consultar("INSERT INTO clientes (nombre, apellido, correo, telefono, estado, cp) 
    //        VALUES ('$nombre','$apellido','$correo','$telefono','$estado','$codigo')");
    // }
    if(!$mail->send()) {
        echo 'Message could not be sent.';
        echo 'Mailer Error: ' . $mail->ErrorInfo;
    } else {
        
        echo 'Message has been sent';
    }
    echo '<br><p>CAPTCHA was completed successfully!</p><br>';
}
?>