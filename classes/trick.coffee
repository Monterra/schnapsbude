class Trick
  playedCards: []

  constructor: (@round, @beginner) ->
    @currentPlayer = @beginner

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
    if true
      @beginner.cards = cards.slice(0, 5)
      @beginner.nextPlayer().cards = cards.slice(5, 10)
      @beginner.nextPlayer().nextPlayer().cards = cards.slice(10, 15)
      @beginner.nextPlayer().nextPlayer().nextPlayer().cards = cards.slice(15, 20)
    else
      @beginner.cards = cards.slice(0, 3)
      @beginner.nextPlayer().cards = cards.slice(3, 6)
      @beginner.nextPlayer().nextPlayer().cards = cards.slice(6, 9)
      @beginner.nextPlayer().nextPlayer().nextPlayer().cards = cards.slice(9, 12)

      @beginner.cards = cards.slice(12, 14)
      @beginner.nextPlayer().cards = cards.slice(14, 16)
      @beginner.nextPlayer().nextPlayer().cards = cards.slice(16, 18)
      @beginner.nextPlayer().nextPlayer().nextPlayer().cards = cards.slice(18, 20)


    console.log @round.game.teamA.playerA.cards
    console.log @round.game.teamA.playerB.cards
    console.log @round.game.teamB.playerA.cards
    console.log @round.game.teamB.playerB.cards

    console.log @currentPlayer.name
    @currentPlayer = @currentPlayer.nextPlayer()
    console.log @currentPlayer.name
    @currentPlayer = @currentPlayer.nextPlayer()
    console.log @currentPlayer.name
    @currentPlayer = @currentPlayer.nextPlayer()
    console.log @currentPlayer.name

module.exports = Trick
