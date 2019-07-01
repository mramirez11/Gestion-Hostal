<?php
include 'config.php';

$a=$_GET['id_Arriendo'];
$sel2 = mysqli_query($con,"update arriendo inner join arriendo_has_habitacion on arriendo.idArriendo= arriendo_has_habitacion.arriendo_idArriendo set arriendo.estadoSolicitud=0 where arriendo_has_habitacion.arriendo_idArriendo=".$a.";");

