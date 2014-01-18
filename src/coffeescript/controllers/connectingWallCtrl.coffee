app.controller "ConnectingWallCtrl", ($scope) ->
  $scope.show = ->
    4 <= @currentScreen <= 8

  $scope.showQuestionChoice = ->
    @currentScreen == 5

  $scope.showClues = ->
    @currentScreen == 6

  $scope.showAnswers = ->
    @currentScreen == 7

  $scope.showConnection = ->
    @currentScreen == 8
