Deck = require './deck'
Trick = require './trick'

class Round
  tricks: []

  constructor: (@game, @cardDistributor, @cardDistributionMode) ->
    @currentBeginner = @cardDistributor.nextPlayer()

  start: () ->
    @game.resetCards()

    cards = @game.match.cards.clone().shuffle(3)

    @distributeCards(cards)

    @newTrick()

  newTrick: () ->
    trick = new Trick @, @currentBeginner
    @tricks.push trick
    trick.start()

  distributeCards: (cardDeck) ->
    cards = cardDeck.getCards()

    #first player which gets cards
    player = @cardDistributor.nextPlayer()

    #give the cards to the players
    i = 0
    if @cardDistributionMode == Enums.CardDistributionMode.Knock
      while i < 4
        value = i * 5
        player.cards = new Deck(cards.slice(value, value + 5))
        player = player.nextPlayer()
        i++
    else
      while i < 4
        value = i * 3
        player.cards = new Deck(cards.slice(value, value + 3).concat(cards.slice(12 + (i * 2), 14 + (i * 2))))
        player = player.nextPlayer()
        i++

module.exports = Round
