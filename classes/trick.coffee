class Trick
  playedCards: []

  constructor: (@round, @beginner) ->

  shuffleCards: (cards) ->
    for i of cards.reverse()
      toSwap = Math.floor(Math.random() * i)
      tempCard = cards[i]
      cards[i] = cards[toSwap]
      cards[toSwap] = tempCard
    cards

  start: () ->
    @round.resetCards()

    #shuffleCards twice
    cards = @shuffleCards(@shuffleCards(@round.game.cards.slice(0)))

    #give the cards to the players
    @round.game.teamA.playerA.cards = cards.slice(0, 5)
    @round.game.teamB.playerA.cards = cards.slice(5, 10)
    @round.game.teamA.playerB.cards = cards.slice(10, 15)
    @round.game.teamB.playerB.cards = cards.slice(15, 20)

    console.log @round.game.teamA.playerA.cards
    console.log @round.game.teamA.playerB.cards
    console.log @round.game.teamB.playerA.cards
    console.log @round.game.teamB.playerB.cards

module.exports = Trick
