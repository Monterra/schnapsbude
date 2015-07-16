class Client

  constructor: (@socket) ->

  setPlayer: (@player) ->

  send: (packet) ->
    @socket.send(JSON.stringify(packet))

module.exports = Client
