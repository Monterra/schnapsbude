#enums
global.Enums = require './enums'

#classes
MatchServer = require './classes/matchServer'

matchServer = new MatchServer(8989)
