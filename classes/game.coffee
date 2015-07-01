Round = require './round'

class Game
  rounds: []

  constructor: (@match, @cardDistributor) ->

  newRound: () ->
    round = new Round @, @match.teamA.playerA, Enums.CardDistributionMode.TakeOff
    @rounds.push round
    round.start()

  resetCards: () ->
    @match.resetCards()

module.exports = Game
