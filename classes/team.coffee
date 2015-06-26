class Team
  mainPoints: 0
  roundPoints: 24

  constructor:(@name, @player1, @player2) ->
    @player1.team = @
    @player2.team = @

module.exports = Team
