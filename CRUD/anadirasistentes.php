<?PHP
include 'ingreso.php';
$dni=$_GET['dni'];
$correo_asis=$_GET['correo_asis'];
$id_u=1;

//$usu_usuario="vscd";
//$usu_password="daniela";
$sentencia=$conexion->prepare("INSERT INTO Asistentes(dni,correo_asis,Usuarios_idUsuario) VALUES (?,?,?)");
$sentencia->bind_param('ssi',$dni,$correo_asis,$id_u);
$sentencia->execute();
$resultado = $sentencia->get_result();

$sentencia->close();
$conexion->close();
?>