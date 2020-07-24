<?php
$hostname="localhost";
$database="dbeventos";
$username="root";
$password="daniela1234";
$conexion=mysqli_connect($hostname,$username,$password,$database);
if($conexion->connect_errno){
    echo "El sitio web está experimentado problemas";
}
?>