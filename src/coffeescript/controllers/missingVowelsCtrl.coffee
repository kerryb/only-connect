app.controller "MissingVowelsCtrl", ($scope) ->
  $scope.show = ->
    10 <= @currentScreen <= 12

  $scope.showClue = ->
    @currentScreen == 11

  $scope.showAnswer = ->
    @currentScreen == 12
