app.factory "game", ->
  state: "choosing"

  chooseQuestion: ->
    @state = "playing"
