var app = angular.module('app', ['ngDialog']);

function solicitudCtrl($scope, $http, ngDialog) {
    $scope.hola = "Solicitud";

    $http({
        method: 'get',
        url: '../../lib/assets/js/getDataSolicitud.php'
    }).then(function successCallback(response) {
        $scope.arrayDatosSolicitudes = response.data;
        //console.log($scope.arrayDatosSolicitudes);
    });

    $scope.clickToOpen = function (solicitud) {
        $scope.solicitud = solicitud;
        ngDialog.open({ template: 'my-solicitud.html', className: 'ngdialog-theme-default', scope: $scope });
    };

    $scope.clickToOpenComprobante = function (solicitud) {
        console.log(solicitud);
        $scope.comprobante = solicitud;
        ngDialog.open({ template: 'modal-solicitud.html', className: 'ngdialog-theme-default', scope: $scope });
    };

    $scope.aceptarSolicitud = function (idArriendo) {
        console.log(idArriendo);
        $http({
            method: 'get',
            url: '../../lib/assets/js/updateAceptado.php',
            params: { id_Arriendo: idArriendo }
        });
    };


    $scope.rechazarSolicitud = function (idArriendo) {
        console.log(idArriendo);
        $http({
            method: 'get',
            url: '../../lib/assets/js/updateRechazado.php',
            params: { id_Arriendo: idArriendo }
        }).then(function successCallback(response) {
            $scope.arrayDatosSolicitudes = response.data;
            //console.log($scope.arrayDatosSolicitudes);
        });

    };
    $scope.reload = function () {
        location.reload();
    };

}

app.controller('solicitudCtrl', ['$scope', '$http', 'ngDialog', solicitudCtrl]);

