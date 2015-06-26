#classes
Card = require './classes/card'
CardInstance = require './classes/cardInstance'
Game = require './classes/game'
Player = require './classes/player'
Round = require './classes/round'
Team = require './classes/team'
Trick = require './classes/trick'

#enums
global.Enums = require './enums'

##########main functions###########

shuffleCards = (cards) ->
  for card in cards
    console.log card.color

dealOut = (cards, dealOutOptions) ->
  for card in cards
    console.log card.color

###################################

playerOne = new Player 'Philipp'
playerTwo = new Player 'Bettina'
playerThree = new Player 'Dominik'
playerFour = new Player 'Melanie'

teamA = new Team 'Team A', playerOne, playerThree
teamB = new Team 'Team B', playerTwo, playerFour

console.log teamA
console.log teamB

cards = [
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

shuffleCards(cards)
