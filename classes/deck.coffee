class Deck
  constructor: (@cards) ->

  getCards: () -> @cards

  getAt: (index) -> @cards[index]

  clone: () ->
    new Deck @cards.slice(0)

  shuffle: (count) ->
    j = 0
    while j < count
      for i of @cards.reverse()
        toSwap = Math.floor(Math.random() * i)
        tempCard = @cards[i]
        @cards[i] = @cards[toSwap]
        @cards[toSwap] = tempCard
      j++
    @

  toString: () ->
    string = ""
    for card in @getCards()
      string += card.toString() + "\n"
    string

module.exports = Deck
