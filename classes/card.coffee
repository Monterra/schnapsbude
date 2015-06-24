CardColor =
  Clubs:    0 #Kreuz
  Spades:   1 #Pik
  Hearts:   2 #Herz
  Diamonds: 3 #Karo

CardType =
  Knave:  0 #Bube
  Queen:  1 #Dame
  King:   2 #König
  Ten:    3 #Zehner
  Ace:    4 #Ass

class Card
  constructor: (@color, @type) ->
