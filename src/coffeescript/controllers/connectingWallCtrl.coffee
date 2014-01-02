app.controller "ConnectingWallCtrl", ($scope) ->
  $scope.show = ->
    3 <= @currentScreen <= 4

  $scope.showQuestionChoice = ->
    @currentScreen == 3

  $scope.showClues = ->
    @currentScreen == 4
