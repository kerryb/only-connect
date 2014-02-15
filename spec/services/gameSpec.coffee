describe "game", ->
  beforeEach module("onlyConnectApp")

  it "starts in the 'choosing' state", inject((game) ->
    expect(game.state).toEqual "choosing"
  )
