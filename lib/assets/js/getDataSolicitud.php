<?php
include 'config.php';


$sel2 = mysqli_query($con,"select arriendo.idArriendo, arriendo.fechaInicio, arriendo.fechaTermino, cliente.nombreCliente, habitacion.idHabitacion, arriendo.costoArriendo, arriendo.rutaComprobante from habitacion inner join arriendo_has_habitacion as ah on habitacion.idHabitacion=ah.habitacion_idHabitacion inner join arriendo on ah.arriendo_idArriendo= arriendo.idArriendo inner join cliente on arriendo.cliente_idCliente= cliente.idCliente where arriendo.estadoSolicitud=2;");
$data = array();

while ($row = mysqli_fetch_array($sel2)) {
 $data[] = array("idArriendo"=>$row["idArriendo"],"idHabitacion"=>$row['idHabitacion'],"nombreCliente"=>$row['nombreCliente'],"fechaInicio"=>$row['fechaInicio'], "fechaTermino"=>$row['fechaTermino'], "costoArriendo"=>$row['costoArriendo'], "rutaComprobante"=>$row["rutaComprobante"]);
} 
echo json_encode($data);