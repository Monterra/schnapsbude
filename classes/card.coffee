class Card
  constructor: (@color, @type) ->

  toString: () -> Enums.CardColorNames[@color] + "; " + Enums.CardTypeNames[@type]

module.exports = Card
