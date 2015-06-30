class Player
  cards: []
  team: null

  constructor: (@name) ->

  resetCards: () ->
    @cards.length = 0

module.exports = Player
