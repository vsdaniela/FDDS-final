<?PHP
include 'ingreso.php';
$n_ev=$_POST['nombre_evento'];
$fecha_e=$_POST['fecha_evento'];
$dh=$_POST['duracion_horas'];
$id_u=1;
//$usu_usuario="vscd";
//$usu_password="daniela";
$sentencia=$conexion->prepare("UPDATE Eventos SET nombre_evento=?,fecha_evento=?,duracion_horas=? WHERE nombre_evento=".$n_ev);
$sentencia->bind_param('ssss',$n_ev,$fecha_e,$dh,$id_u);
$sentencia->execute();
$resultado = $sentencia->get_result();
$sentencia->close();
$conexion->close();
?>
