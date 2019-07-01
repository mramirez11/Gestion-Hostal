<?php
include 'config.php';

$a=$_GET['id_Arriendo'];
$sel2 = mysqli_query($con,"update arriendo inner join arriendo_has_habitacion on arriendo.idArriendo= arriendo_has_habitacion.arriendo_idArriendo set arriendo.estadoSolicitud=1 where arriendo_has_habitacion.arriendo_idArriendo=".$a.";");



//$result=mysql_query("update arriendo inner join arriendo_has_habitacion on arriendo.idArriendo= arriendo_has_habitacion.arriendo_idArriendo set arriendo.arriendoAceptado=1 where arriendo_has_habitacion.arriendo_idArriendo=3;");
?>