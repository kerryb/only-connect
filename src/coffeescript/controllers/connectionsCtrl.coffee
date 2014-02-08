app.controller "ConnectionsCtrl", ($scope) ->
  @playing = false

  $scope.showQuestionChoice = ->
    not @playing

  $scope.showClues = ->
    @playing

  $scope.chooseQuestion = ->
    @playing = true
