app.controller "ConnectingWallCtrl", ($scope) ->
  $scope.show = ->
    4 <= @currentScreen <= 9

  $scope.showQuestionChoice = ->
    @currentScreen == 5

  $scope.showClues = ->
    @currentScreen == 6

  $scope.showAnswers = ->
    @currentScreen == 7

  $scope.showConnection = ->
    8 <= @currentScreen <= 9

  $scope.showAnswer = ->
    @currentScreen == 9
