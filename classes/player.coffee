Deck = require './deck'

class Player
  cardDeck: new Deck []
  team: null

  constructor: (@name) ->

  setCardDeck: (@cardDeck) ->

  resetCardDeck: () ->
    @cardDeck = new Deck []

  nextPlayer: () ->
    @team?.match?.nextPlayer @

  callEvent: (eventType, data) ->
    if eventType == @eventQueue?.eventType
      @eventQueue.callback(data)
      delete @eventQueue

  waitForEvent: (eventType, callback) ->
    @eventQueue =
      eventType: eventType
      callback: callback

module.exports = Player
