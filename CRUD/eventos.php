<?PHP
include 'ingreso.php';
$query="SELECT nombre_evento  FROM eventos";
$result=mysqli_query($con,$query);
$number_rows=mysqli_num_rows($result);
$response=array();

if($number_rows>0)
{
	while ($row = mysqli_fetch_assoc($result)) {
    	$response[]=$row;
    }
}
echo json_decode(array("EVENTOS_")=>$response)
mysqli_close($con);

?>