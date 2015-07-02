# out: client.js
class Client

  constructor: (@userName) ->
    connection = new WebSocket('ws://localhost:8989')

    connection.onopen = () =>
      connection.send(@userName)

    connection.onmessage = (message) =>
      document.getElementById('infoField').innerHTML = (4 - parseInt(message.data)) + " Spieler verbleibend."

window.Client = Client
