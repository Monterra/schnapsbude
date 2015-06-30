Round = require './round'
Card = require './card'

class Game
  rounds: []

  cards: [
    #Clubs
    new Card Enums.CardColor.Clubs, Enums.CardType.Jack
    new Card Enums.CardColor.Clubs, Enums.CardType.Queen
    new Card Enums.CardColor.Clubs, Enums.CardType.King
    new Card Enums.CardColor.Clubs, Enums.CardType.Ten
    new Card Enums.CardColor.Clubs, Enums.CardType.Ace
    #Spades
    new Card Enums.CardColor.Spades, Enums.CardType.Jack
    new Card Enums.CardColor.Spades, Enums.CardType.Queen
    new Card Enums.CardColor.Spades, Enums.CardType.King
    new Card Enums.CardColor.Spades, Enums.CardType.Ten
    new Card Enums.CardColor.Spades, Enums.CardType.Ace
    #Hearts
    new Card Enums.CardColor.Hearts, Enums.CardType.Jack
    new Card Enums.CardColor.Hearts, Enums.CardType.Queen
    new Card Enums.CardColor.Hearts, Enums.CardType.King
    new Card Enums.CardColor.Hearts, Enums.CardType.Ten
    new Card Enums.CardColor.Hearts, Enums.CardType.Ace
    #Diamonds
    new Card Enums.CardColor.Diamonds, Enums.CardType.Jack
    new Card Enums.CardColor.Diamonds, Enums.CardType.Queen
    new Card Enums.CardColor.Diamonds, Enums.CardType.King
    new Card Enums.CardColor.Diamonds, Enums.CardType.Ten
    new Card Enums.CardColor.Diamonds, Enums.CardType.Ace
  ]

  constructor: (@teamA, @teamB) ->

  newRound: () ->
    round = new Round(@)
    @rounds.push(round)
    round.newTrick();

  getPlayers: () ->
    [
      @teamA.playerA
      @teamA.playerB
      @teamB.playerA
      @teamB.playerB
    ]

  resetCards: () ->
    for player in @getPlayers()
      player.resetCards()

module.exports = Game
