app.controller "ConnectionsCtrl", ($scope) ->
  $scope.show = ->
    1 <= @currentScreen <= 3

  $scope.showQuestionChoice = ->
    @currentScreen == 2

  $scope.showClues = ->
    @currentScreen == 3
