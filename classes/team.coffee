class Team
  mainPoints: 0
  roundPoints: 24
  game: null

  constructor:(@name, @playerA, @playerB) ->
    @playerA.team = @
    @playerB.team = @

module.exports = Team
