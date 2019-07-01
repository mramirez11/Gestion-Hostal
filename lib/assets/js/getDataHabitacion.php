<?php
include 'config.php';

$sel = mysqli_query($con,"select * from habitacion");
$data = array();


while ($row = mysqli_fetch_array($sel)) {
 $data[] = array("idHabitacion"=>$row['idHabitacion'],"nombreHabitacion"=>$row['nombreHabitacion'],"descripcionHabitacion"=>$row['descripcionHabitacion'], "precioHabitacion"=>$row['precioHabitacion']);
}

echo json_encode($data);