
#   Create a class called Player.
# Every player should have four attributes: gold_coins, health_points, and lives.
# lives should start at 5.
# gold_coins should start at 0.
# health_points should start at 10.
# Your class should have an instance method called level_up that increases lives by one.
# Your class should have an instance method called collect_treasure that increases gold_coins by one. If gold_coins is a multiple of ten (eg, 10, 20, 30, and so on) then the collect_treasure method should run the level_up method.
# Your class should have an instance method called do_battle that accepts one damage argument and subtracts it from the player's health_points. If health_points falls below one, subtract one from lives and reset health_points to ten. If you have run out of lives, this method should run another method called restart (see below).
# The restart instance method should set all attributes back to their starting values (5, 0, and 10).
# Don't forget to test out your code every step of the way by creating instances of your class and trying to run your different methods. You should be committing every time you get a new method working.


class Player
  attr_accessor :gold_coins, :health_points, :lives
    def initialize
      @gold_coins = 0
      @health_points = 10
      @lives = 5
    end

  def level_up
    return @lives +=1
  end

  def collect_treasure
    @gold_coins += 1
    if gold_coins % 10 == 0
      return level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage

    if @health_points < 1
      @lives -= 1
      @health_points = 10
    end
    if @lives < 0
      restart
    end
  end

  def reset
    @gold_coins = 0
    @lives = 5
    @health_points = 10
  end
end

player = Player.new
puts "level_up"
puts player.level_up
puts player.inspect
puts "collect_treasure"
player.collect_treasure
puts player.inspect
puts "do_battle"
player.do_battle(5)
puts player.inspect
puts "reset"
puts player.reset
puts player.inspect
