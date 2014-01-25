app.controller "MissingVowelsCtrl", ($scope) ->
  $scope.showClue = ->
    console.debug "Show clue"
    true

  $scope.showAnswer = ->
    console.debug "Hide answer"
    false
