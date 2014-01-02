app.controller "ConnectionsCtrl", ($scope) ->
  $scope.show = ->
    1 <= @currentScreen <= 2

  $scope.showQuestionChoice = ->
    @currentScreen == 1

  $scope.showClues = ->
    @currentScreen == 2
