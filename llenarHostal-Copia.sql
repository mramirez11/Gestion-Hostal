insert into Cliente values(1,"11.111.111-1","Juan", "Perez","+56911223344","j.perez01@ufromail.cl" );
insert into Cliente values(2,"22.222.222-2","Juana", "Calfuqueo","+56922222222","j.calfuqueo01@ufromail.cl" );
insert into Cliente values(3,"33.333.333-3","Camilo", "Catrillanca","+56913333351","c.catrillanca01@ufromail.cl" );
insert into Cliente values(4,"44.444.444-4","Hermes", "Suazo","+56978787878","h.suazo01@ufromail.cl" );
insert into Cliente values(5,"55.555.555-5","Barto", "Simpsons","+56912312312","b.simpsons01@ufromail.cl" );

select * from Cliente;

insert into Habitacion values(1,"Habitacion 1", "Esta es la habitacion 1","100000");
insert into Habitacion values(2,"Habitacion 2", "Esta es la habitacion 2","200000");
insert into Habitacion values(3,"Habitacion 3", "Esta es la habitacion 3","300000");
insert into Habitacion values(4,"Habitacion 4", "Esta es la habitacion 4","400000");
insert into Habitacion values(5,"Habitacion 5", "Esta es la habitacion 5","500000");
insert into Habitacion values(6,"Habitacion 6", "Esta es la habitacion 6","600000");
insert into Habitacion values(7,"Habitacion 7", "Esta es la habitacion 7","700000");
insert into Habitacion values(8,"Habitacion 8", "Esta es la habitacion 8","800000");
select * from Habitacion;

INSERT INTO `Hostal`.`Arriendo` (`idArriendo`, `fechaInicio`, `fechaTermino`, `Cliente_idCliente`, `rutaComprobante`, `estadoSolicitud`, `costoArriendo`) VALUES ('1', '01/01/2000', '07/01/2000', '1', './lib/assets/img/imagen1.jpg', '1', '100000');
INSERT INTO `Hostal`.`Arriendo` (`idArriendo`, `fechaInicio`, `fechaTermino`, `Cliente_idCliente`, `rutaComprobante`, `estadoSolicitud`, `costoArriendo`) VALUES ('2', '02/02/2000', '03/02/2000', '3', './lib/assets/img/imagen1.jpg', '1', '200000');
INSERT INTO `Hostal`.`Arriendo` (`idArriendo`, `fechaInicio`, `fechaTermino`, `Cliente_idCliente`, `rutaComprobante`, `estadoSolicitud`, `costoArriendo`) VALUES ('3', '03/03/2000', '03/0/2001', '5', '/lib/assets/img/imagen1.jpg', '0', '300000');

select * from Arriendo;

insert into Arriendo_has_Habitacion values(1,1);
insert into Arriendo_has_Habitacion values(2,2);
insert into Arriendo_has_Habitacion values(3,8);

select * from Arriendo_has_Habitacion;
