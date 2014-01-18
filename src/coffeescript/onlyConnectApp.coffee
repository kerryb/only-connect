app = angular.module("onlyConnectApp", ["ngAnimate"]).run ($rootScope) ->
  $rootScope.currentScreen = 0
  $rootScope.inGame = ->
    @currentScreen > 0
