use hostal;
insert into cliente values(1,"11.111.111-1","Juan", "Perez","+56911223344","j.perez01@ufromail.cl" );
insert into cliente values(2,"22.222.222-2","Juana", "Calfuqueo","+56922222222","j.calfuqueo01@ufromail.cl" );
insert into cliente values(3,"33.333.333-3","Camilo", "Catrillanca","+56913333351","c.catrillanca01@ufromail.cl" );
insert into cliente values(4,"44.444.444-4","Hermes", "Suazo","+56978787878","h.suazo01@ufromail.cl" );
insert into cliente values(5,"55.555.555-5","Barto", "Simpsons","+56912312312","b.simpsons01@ufromail.cl" );

select * from cliente;

insert into habitacion values(1,"Habitacion 1", "Esta es la habitacion 1","100000");
insert into habitacion values(2,"Habitacion 2", "Esta es la habitacion 2","200000");
insert into habitacion values(3,"Habitacion 3", "Esta es la habitacion 3","300000");
insert into habitacion values(4,"Habitacion 4", "Esta es la habitacion 4","400000");
insert into habitacion values(5,"Habitacion 5", "Esta es la habitacion 5","500000");
insert into habitacion values(6,"Habitacion 6", "Esta es la habitacion 6","600000");
insert into habitacion values(7,"Habitacion 7", "Esta es la habitacion 7","700000");
insert into habitacion values(8,"Habitacion 8", "Esta es la habitacion 8","800000");
select * from habitacion;

INSERT INTO `hostal`.`arriendo` (`idArriendo`, `fechaInicio`, `fechaTermino`, `Cliente_idCliente`, `rutaComprobante`, `estadoSolicitud`, `costoArriendo`) VALUES ('1', '01/01/2000', '07/01/2000', '1', '../../lib/assets/img/ComprobanteDePago.png', '1', '100000');
INSERT INTO `hostal`.`arriendo` (`idArriendo`, `fechaInicio`, `fechaTermino`, `Cliente_idCliente`, `rutaComprobante`, `estadoSolicitud`, `costoArriendo`) VALUES ('2', '02/02/2000', '03/02/2000', '3', '../../lib/assets/img/ComprobanteDePago.png', '1', '200000');
INSERT INTO `hostal`.`arriendo` (`idArriendo`, `fechaInicio`, `fechaTermino`, `Cliente_idCliente`, `rutaComprobante`, `estadoSolicitud`, `costoArriendo`) VALUES ('3', '03/03/2000', '03/0/2001', '5', '../../lib/assets/img/ComprobanteDePago.png', '0', '300000');
INSERT INTO `hostal`.`arriendo` (`idArriendo`, `fechaInicio`, `fechaTermino`, `Cliente_idCliente`, `rutaComprobante`, `estadoSolicitud`, `costoArriendo`) VALUES ('4', '03/05/2000', '03/06/2001', '2', '../../lib/assets/img/ComprobanteDePago.png', '2', '400000');
INSERT INTO `hostal`.`arriendo` (`idArriendo`, `fechaInicio`, `fechaTermino`, `Cliente_idCliente`, `rutaComprobante`, `estadoSolicitud`, `costoArriendo`) VALUES ('5', '03/06/2000', '03/07/2001', '4', '../../lib/assets/img/ComprobanteDePago.png', '2', '500000');
select * from arriendo;

insert into arriendo_has_habitacion values(1,1);
insert into arriendo_has_habitacion values(2,2);
insert into arriendo_has_habitacion values(3,8);
insert into arriendo_has_habitacion values(4,3);
insert into arriendo_has_habitacion values(5,4);

select * from arriendo_has_habitacion;
select * from arriendo;
