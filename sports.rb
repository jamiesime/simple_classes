

class Team

  def initialize(team, players, coach, points)
    @team = team
    @players = players
    @coach = coach
    @points = points
  end

  def get_team()
    return @team
  end

  def get_players()
    return @players
  end

  def get_coach()
    return @coach
  end

  def get_points()
    return @points
  end

  def change_coach(new_coach)
    @coach = new_coach
  end

  def add_player(name)
    @players.push(name)
    return name
  end

  def check_for_player(name)
    return true if @players.include?(name)
  end

  def add_points(won_last_game)
    return 5 if won_last_game
  end

end
