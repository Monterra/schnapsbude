Deck = require './deck'

class Player
  cards: new Deck []
  team: null

  constructor: (@name) ->

  resetCards: () ->
    cards = new Deck []

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
