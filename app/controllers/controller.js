function aplicacionCtrl($scope) {
    $scope.dato = "asdas";
}

angular.module('app', [])
    .controller('aplicacionCtrl', ['$scope', aplicacionCtrl]);