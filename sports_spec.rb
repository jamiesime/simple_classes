require("minitest/autorun")
require("minitest/rg")
require_relative("./sports.rb")

class TestSportsTeam < MiniTest::Test

  def test_new_team()
    team = Team.new("Mallards", ["Joey", "Tina", "Solomon"], "Coach Gruff", 0)
    assert_equal("Mallards", team.get_team())
    assert_equal(["Joey", "Tina", "Solomon"], team.get_players())
    assert_equal("Coach Gruff", team.get_coach())
  end

  def test_change_coach()
    team = Team.new("Mallards", ["Joey", "Tina", "Solomon"], "Coach Gruff", 0)
    new_name = team.change_coach("Coach Mickey")
    assert_equal("Coach Mickey", team.get_coach())
  end

  def test_add_player()
    team = Team.new("Mallards", ["Joey", "Tina", "Solomon"], "Coach Gruff", 0)
    new_player = team.add_player("Diana")
    members = team.get_players()
    assert(members.include?(new_player))
  end

  def test_check_for_player()
    team = Team.new("Mallards", ["Joey", "Tina", "Solomon"], "Coach Gruff", 0)
    name = team.check_for_player("Joey")
    assert_equal(true, name)
  end

  def test_add_points()
    team = Team.new("Mallards", ["Joey", "Tina", "Solomon"], "Coach Gruff", 0)
    points = team.add_points(true)
    assert_equal(5, points)
  end



end
