#enums
global.Enums = require './enums'

#classes
Match = require './classes/match'
Player = require './classes/player'
Team = require './classes/team'

playerOne = new Player 'Philipp'
playerTwo = new Player 'Bettina'
playerThree = new Player 'Dominik'
playerFour = new Player 'Melanie'

teamA = new Team 'Team A', playerOne, playerThree
teamB = new Team 'Team B', playerTwo, playerFour

match = new Match teamA, teamB
match.newGame()

playerOne.callEvent(Enums.PlayerEventType.PlayCard, 1)
playerTwo.callEvent(Enums.PlayerEventType.PlayCard, 2)
