<?PHP
include 'ingreso.php';
$n_ev=$_POST['nombre_evento'];
$fecha_e=$_POST['fecha_evento'];
$dh=$_POST['duracion_horas'];
$id_u='1';

//$usu_usuario="vscd";
//$usu_password="daniela";
$sql="INSERT INTO Eventos (nombre_evento,fecha_evento,duracion_horas,Usuarios_idUsuario) VALUES (?,?,?,?)";
$sentencia->bind_param('ssss',$n_ev,$fecha_e,$dh,$id_u);
$sentencia->execute();
$resultado = $sentencia->get_result();
if ($fila = $resultado->fetch_assoc()) {
         echo json_encode($fila,JSON_UNESCAPED_UNICODE);     
}
$sentencia->close();
$conexion->close();
?>