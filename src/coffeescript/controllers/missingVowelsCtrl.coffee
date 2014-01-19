app.controller "MissingVowelsCtrl", ($scope) ->
  $scope.show = ->
    11 <= @currentScreen <= 13

  $scope.showClue = ->
    @currentScreen == 12

  $scope.showAnswer = ->
    @currentScreen == 13
