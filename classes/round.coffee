Trick = require './trick'

class Round
  tricks: []

  constructor: (@game) ->

  newTrick: () ->
    trick = new Trick(@, @game.teamA.playerA)
    @tricks.push(trick)
    trick.start();

  resetCards: () ->
    @game.resetCards()

module.exports = Round
