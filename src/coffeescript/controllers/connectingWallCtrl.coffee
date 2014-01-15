app.controller "ConnectingWallCtrl", ($scope) ->
  $scope.show = ->
    3 <= @currentScreen <= 6

  $scope.showQuestionChoice = ->
    @currentScreen == 3

  $scope.showClues = ->
    @currentScreen == 4

  $scope.showAnswers = ->
    @currentScreen == 5

  $scope.showConnection = ->
    @currentScreen == 6
