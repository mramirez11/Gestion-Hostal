var app = angular.module('app', ['ngDialog']);

function habitacionCtrl($scope, $http, ngDialog) {
    //Codigo para modal del boton +info
    $scope.clickToOpen = function (i) {
        $scope.habitacion = i;
        ngDialog.open({ template: 'my-habitacion.html', className: 'ngdialog-theme-default', scope: $scope });
    };
    $http({
        method: 'get',
        url: '../../lib/assets/js/getDataHabitacion.php'
    }).then(function successCallback(response) {
        $scope.arrayHabitaciones = response.data;
        //console.log($scope.habitaciones); //HABITACIONES
    });

    //Codigo para modal de boton ver detalle
    $scope.clickToOpenDetalle = function (habitacionElegida) {
        $scope.habitacion = $scope.arrayHabitaciones[habitacionElegida.idHabitacion - 1];
        //console.log($scope.habitacion);
        $scope.arrayArriendoHabitacionMatch=[];
        j=0;
        for (i = 0; i < $scope.arrayHabitaciones.length; i++) {
            if ($scope.habitacion.idHabitacion == $scope.arrayArriendoHabitacion[i].idHabitacion) {
             //  console.log($scope.habitacion.idHabitacion+" "+ $scope.arrayArriendoHabitacion[i].idHabitacion);
                // console.log(i+" " +$scope.arrayArriendoHabitacion[i].nombreCliente);
                $scope.arrayArriendoHabitacionMatch[j]=$scope.arrayArriendoHabitacion[i];
                j++;
                ngDialog.open({ template: 'my-habitacion-detalle.html', className: 'ngdialog-theme-default', scope: $scope });
            };
        };
       
    };

    $http({
        method: 'get',
        url: '../../lib/assets/js/getData.php'
    }).then(function successCallback(response) {
        $scope.arrayArriendoHabitacion = response.data;
       // console.log($scope.arriendoHabitacion); //HABITACION CON EL DETALLE
    });

}
app.controller('habitacionCtrl', ['$scope', '$http', 'ngDialog', habitacionCtrl]);
