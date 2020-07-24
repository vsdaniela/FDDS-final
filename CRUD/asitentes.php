<?PHP
$hostname="localhost";
$database="dbeventos";
$username="root";
$password="daniela1234";
$con=mysqli_connect($hostname,$username,$password,$database);
$query="SELECT * FROM Eventos_has_Asistentes";
$result=mysqli_query($con,$query);
$number_rows=mysqli_num_rows($result);
$response=array();
if($number_rows>0)
{
	while ($row = mysqli_fetch_assoc($result)) {
    	$response[]=$row;
    }
}
echo json_decode(array("EV_AS")=>$response)
mysqli_close($con);
?>