Trick = require './trick'

class Round
  tricks: []

  constructor: (@game) ->

  newTrick: () ->
    trick = new Trick(@, @game.teamA.playerA)
    tricks.push(trick)
    trick.start();

module.exports = Round
