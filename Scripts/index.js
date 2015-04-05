
var indexPage = angular.module('indexPage', ['ngRoute']);

indexPage.controller('ContentCtrl', function ($scope, $route, $routeParams, $location) {
    $scope.$route = $route;
    $scope.$location = $location;
    $scope.$routeParams = $routeParams;
});

indexPage.controller('HeaderCtrl', function ($scope, $route, $routeParams, $location) {
    $scope.$route = $route;
    $scope.$location = $location;
    $scope.$routeParams = $routeParams;
})

indexPage.config(function ($routeProvider, $locationProvider) {
    $routeProvider.when("/", {
        controller: "ContentCtrl",
        templateUrl: 'index-content.html'
    });
    $routeProvider.when("/CacheManager", {
        templateUrl: 'CacheManager/README.html'
    });
});


