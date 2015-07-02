WebSocketServer = require('websocket').server
http = require('http')

Match = require './match'
Player = require './player'
Team = require './team'

class MatchServer
  playerOne: null
  playerTwo: null
  playerThree: null
  playerFour: null

  playerCount: 0
  sockets: []

  constructor: (@port) ->
    #@initGame()
    @initConnection()

  initGame: () ->
    playerOne = new Player 'Philipp'
    playerTwo = new Player 'Bettina'
    playerThree = new Player 'Dominik'
    playerFour = new Player 'Melanie'

    teamA = new Team 'Team A', @playerOne, @playerThree
    teamB = new Team 'Team B', @playerTwo, @playerFour

    match = new Match teamA, teamB
    match.newGame()

  initConnection: () ->
    server = http.createServer (request, response) ->
      #process HTTP request. Since we're writing just WebSockets server
      #we don't have to implement anything.
    server.listen @port, () =>
      console.log 'listening on ' + @port

    ws = new WebSocketServer
      httpServer: server

    ws.on 'request', (request) =>
      socket = request.accept(null, request.origin)
      @sockets.push(socket)

      @onConnection(socket)

  onConnection: (socket) =>
    @playerCount++
    for aSocket in @sockets
      aSocket.send(@playerCount)

    socket.on 'message', (message) ->
      console.log 'Hello ' + message.utf8Data

module.exports = MatchServer
