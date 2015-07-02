class Trick
  playedCards: []

  constructor: (@round, @beginner) ->

  start: () ->
    @beginner.waitForEvent Enums.PlayerEventType.PlayCard, (cardIndex) =>
      console.log(@beginner.cards.getAt(cardIndex).toString())

module.exports = Trick
