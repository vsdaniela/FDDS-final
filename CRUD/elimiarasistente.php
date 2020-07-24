<?PHP
include 'ingreso.php';
$n_d=$_POST['dni'];
$query="DELETE from Asistentes
  where dni=".$n_d;
$result=mysqli_query($con,$query);

mysqli_close($con);
?>