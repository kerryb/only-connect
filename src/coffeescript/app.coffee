app = angular.module("onlyConnectApp", []).run ($rootScope) ->
  $rootScope.currentScreen = 0

app.controller "GameCtrl", ($scope) ->
  $scope.advance = ->
    @currentScreen++

app.controller "TitleCtrl", ($scope) ->
  $scope.show = ->
    @currentScreen == 0

app.controller "ConnectionsCtrl", ($scope) ->
  $scope.show = ->
    1 <= @currentScreen <= 2

  $scope.showQuestionChoice = ->
    @currentScreen == 1

  $scope.showClues = ->
    @currentScreen == 2

app.controller "ConnectingWallCtrl", ($scope) ->
  $scope.show = ->
    3 <= @currentScreen <= 4

  $scope.showQuestionChoice = ->
    @currentScreen == 3

  $scope.showClues = ->
    @currentScreen == 4
