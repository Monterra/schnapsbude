class Team
  mainPoints: 0
  roundPoints: 24

  constructor:(@name, @playerA, @playerB) ->
    @playerA.team = @
    @playerB.team = @

module.exports = Team
