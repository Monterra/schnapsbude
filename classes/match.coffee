Game = require './game'
Deck = require './deck'
Card = require './card'

class Match
  games: []

  cards: new Deck [
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
    @teamA.match = @
    @teamB.match = @

  newGame: () ->
    game = new Game(@)
    @games.push(game)
    game.newRound()

  getPlayers: () ->
    [
      @teamA.playerA
      @teamB.playerA
      @teamA.playerB
      @teamB.playerB
    ]

  nextPlayer: (player) ->
    players = @getPlayers()
    playerIndex = players.indexOf player
    playerIndex++

    if playerIndex >= players.length
      playerIndex = 0

    players[playerIndex]

  resetCards: () ->
    for player in @getPlayers()
      player.resetCards()

module.exports = Match
