# out: client.js
class Client

  constructor: (@userName) ->
    @connection = new WebSocket('ws://localhost:8989')

    @connection.onopen = () =>
      @send
        id: Enums.ClientPackets.NewPlayer
        name: @userName

    @connection.onmessage = (message) =>
      try
        packet = JSON.parse(message.data)
      catch error
        console.error('Error parsing packet: ' + message.data)

      switch packet.id
        when Enums.ServerPackets.PlayerCount
          document.getElementById('infoField').innerHTML = (4 - parseInt(packet.count)) + " Spieler verbleibend."
        when Enums.ServerPackets.NewRound
          document.body.innerHTML = ''
          for card in packet.cards
            document.body.innerHTML += Enums.CardColorNames[card.color] + "; " + Enums.CardTypeNames[card.type] + '<br>'

  send: (packet) ->
    @connection.send(JSON.stringify(packet))

window.Client = Client
