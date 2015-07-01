class Player
  cards: []
  team: null

  constructor: (@name) ->

  resetCards: () ->
    @cards.length = 0

  nextPlayer: () ->
    @team?.game?.nextPlayer @

module.exports = Player
