WebSocketServer = require('websocket').server
http = require('http')

Match = require './match'
Player = require './player'
Team = require './team'
Client = require './client'

class MatchServer
  playerCount: 0

  clients: []

  constructor: (@port) ->
    @initConnection()

  initGame: () ->
    teamA = new Team 'Team A', @clients[0].player, @clients[2].player
    teamB = new Team 'Team B', @clients[1].player, @clients[3].player

    @match = new Match teamA, teamB
    @match.newGame()

  initConnection: () ->
    server = http.createServer (request, response) ->
      #process HTTP request. Since we're writing just WebSockets server
      #we don't have to implement anything.
    server.listen @port, () =>
      console.log 'Listening on Port ' + @port

    ws = new WebSocketServer
      httpServer: server

    ws.on 'request', (request) =>
      socket = request.accept(null, request.origin)
      @onConnection(socket)

  sendToAll: (packet) ->
    for client in @clients
      client.send(packet)

  onConnection: (socket) =>
    client = new Client(socket)
    @clients.push(client)

    socket.on 'message', (message) =>
      try
        packet = JSON.parse(message.utf8Data)
      catch error
        console.error('Error parsing packet: ' + message.utf8Data)

      switch packet.id
        when Enums.ClientPackets.NewPlayer
          @playerCount++
          client.setPlayer(new Player(packet.name))

          @sendToAll
            id: Enums.ServerPackets.PlayerCount
            count: @playerCount

          if @playerCount >= 4
            @initGame()

            for client in @clients
              client.send
                id: Enums.ServerPackets.NewRound
                cards: client.player.cardDeck.getCards()


module.exports = MatchServer
