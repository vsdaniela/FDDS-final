<?PHP
include 'ingreso.php';
$n_d=$_POST['dni'];
$correo=$_POST['correo_asis'];
$id_u=1;
//$usu_usuario="vscd";
//$usu_password="daniela";
$sentencia=$conexion->prepare("UPDATE Asistentes SET dni=".$d.",correo_asis=".$correo.",Usuarios_idUsuario=1 WHERE dni=".$d);
$sentencia->execute();
$resultado = $sentencia->get_result();
if ($fila = $resultado->fetch_assoc()) {
         echo json_encode($fila,JSON_UNESCAPED_UNICODE);     
}
$sentencia->close();
$conexion->close();
?>
