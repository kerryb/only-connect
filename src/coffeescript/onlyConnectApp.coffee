app = angular.module("onlyConnectApp", ["ngAnimate", "ngRoute"]).config ["$routeProvider", ($routeProvider)->
  $routeProvider.when("/",
    templateUrl: "views/title.html"
  ).when("/round/1",
    templateUrl: "views/connections.html"
    controller: "ConnectionsCtrl"
  ).when("/round/3",
    templateUrl: "views/connecting_wall.html"
    controller: "ConnectingWallCtrl"
  ).when("/round/4",
    templateUrl: "views/missing_vowels.html"
    controller: "MissingVowelsCtrl"
  ).otherwise
    redirectTo: "/"
]
