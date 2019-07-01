<?php
include 'config.php';


$sel2 = mysqli_query($con,"select arriendo.fechaInicio, arriendo.fechaTermino, cliente.nombreCliente, habitacion.idHabitacion from habitacion inner join arriendo_has_habitacion as ah on habitacion.idHabitacion=ah.habitacion_idHabitacion inner join arriendo on ah.arriendo_idArriendo= arriendo.idArriendo inner join cliente on arriendo.cliente_idCliente= cliente.idCliente;");
$data = array();

while ($row = mysqli_fetch_array($sel2)) {
 $data[] = array("idHabitacion"=>$row['idHabitacion'],"nombreCliente"=>$row['nombreCliente'],"fechaInicio"=>$row['fechaInicio'], "fechaTermino"=>$row['fechaTermino']);
} 
echo json_encode($data);