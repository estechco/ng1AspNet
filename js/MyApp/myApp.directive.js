(function () {
  'use strict';

  angular
    .module('ng1AspNet.MyApp',
    []);

  var _myAppController = function ($scope) {
    //var dmEditVm = $controller('dealerModelEditController as dm', { $scope: $scope });
    //angular.extend(this, dmEditVm);
    var abVm = this;

    abVm.name = "myAppController";
  }

  var _myAppDirective = function () {
    return {
      restrict: "E",
      scope: {
        id: "@",
        option: "="
      },
      controller: _myAppController,
      controllerAs: 'ma',
      templateUrl: 'js/Components/MyApp/Partials/myapp.html'
    };
  }

  angular
      .module('ng1AspNet.MyApp')
      .directive('myApp', _myAppDirective);
})();
