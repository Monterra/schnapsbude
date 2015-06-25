#classes
Card = require './classes/card'
CardInstance = require './classes/cardInstance'
Game = require './classes/game'
Player = require './classes/player'
Round = require './classes/round'
Team = require './classes/team'
Trick = require './classes/trick'

#enums
Enums = require './enums'

##########main functions###########

shuffleCards = (cards) ->
  for card of cards
    console.log card.color

dealOut = (cards, dealOutOptions) ->
  for card of cards
    console.log card.color

###################################

Team teamA = new Team 'Team A'
Team teamB = new Team 'Team B'

Player playerOne = new Player teamA, 'Philipp'
Player playerTwo = new Player teamB, 'Bettina'
Player playerThree = new Player teamA, 'Dominik'
Player playerFour = new Player teamB, 'Melanie'

teamA.player1(playerOne)
teamA.player2(playerThree)
teamB.player1(playerTwo)
teamB.player2(playerFour)

console.log('Team A: ', playerOne.name, " + ", playerThree.name)
console.log('Team A: ', playerTwo.name, " + ", playerFour.name)

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
