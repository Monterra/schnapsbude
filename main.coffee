#enums
global.Enums = require './enums'

#classes
Game = require './classes/game'
Player = require './classes/player'
Team = require './classes/team'

playerOne = new Player 'Philipp'
playerTwo = new Player 'Bettina'
playerThree = new Player 'Dominik'
playerFour = new Player 'Melanie'

teamA = new Team 'Team A', playerOne, playerThree
teamB = new Team 'Team B', playerTwo, playerFour

game = new Game teamA, teamB
game.newRound()
