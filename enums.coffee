Enums =
  CardColor:
    Clubs:    0 #Kreuz
    Spades:   1 #Pik
    Hearts:   2 #Herz
    Diamonds: 3 #Karo

  CardType:
    Jack:   0 #Bube
    Queen:  1 #Dame
    King:   2 #König
    Ten:    3 #Zehner
    Ace:    4 #Ass

  PlayType:
    Bettler:
      name: 'Bettler'
      description: 'Ohne Adut, kein Stich darf gewonnen werden.'
      trump: false
      playerStarts: true
      points: 4
      tricks: 0

    AssBettler:
      name: 'Ass-Bettler'
      description: 'Wie Bettler, Spieler besitzt ein oder mehrere Assen.'
      trump: false
      playerStarts: true
      points: 5
      tricks: 0

    Schnapser:
      name: 'Schnapser'
      description: 'Schnapsrunde, nach 3 Stichen müssen 66 Punkte erreicht werden.'
      trump: true
      playerStarts: true
      points: 6
      tricks: 3

    SchnapserMitPartner:
      name: 'Schnapser mit Partner'
      description: 'Wie Schnapser, aber der Partner spielt aus.'
      trump: true
      playerStarts: false
      points: 6
      tricks: 3

    Gang:
      name: 'Gang'
      description: 'Ohne Adut, alle Stiche.'
      trump: false
      playerStarts: true
      points: 9
      tricks: 5

    ZehnerLoch:
      name: '10er-Loch'
      description: 'Ohne Adut, alle Stiche, aber mit folgender Reihenfolge: 10-K-D-B-A'
      trump: false
      playerStarts: true
      points: 10
      tricks: 5

    KontraSchnapser:
      name: 'Kontra-Schnapser'
      description: 'Wie Schnapser, aber der Gegner spielt aus.'
      trump: false
      playerStarts: false
      points: 12
      tricks: 3

    BauernSchnapser:
      name: 'Bauernschnapser'
      description: 'Mit Adut, alle Stiche.'
      trump: true
      playerStarts: true
      points: 12
      tricks: 5

    BauernSchnapserMitPartner:
      name: 'Bauernschnapser mit Partner'
      description: 'Mit Adut, alle Stiche, aber der Partner spielt aus.'
      trump: true
      playerStarts: false
      points: 12
      tricks: 5

    KontraBauernschnapser:
      name: 'Kontra-Bauernschnapser'
      description: 'Mit Adut, alle Stiche, aber der Gegner spielt aus.'
      trump: true
      playerStarts: false
      points: 24
      tricks: 5

module.exports = Enums