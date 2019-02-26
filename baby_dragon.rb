class BabyDragon
  attr_reader :special_behavior
  @@behavior = {
    "yellow" => "mellows out",
    "blue" => "cries his little eyes out....",
    "red" => "throws an adorable tantrum",
    "pink" => "falls in love!",
    "purple" => "cuddles with you <3",
  }

  def initialize(name, color)
    @name = name
    @color = color
    @emotional_growth = 0
    @hungriness_level = 10
    @thirst_level = 10
    @is_asleep = false
    @special_behavior = @@behavior[@color]
  end

  def emotional_release
    puts "#{@name} #{@@behavior[@color]}"
    @color = @@behavior.keys.sample
    puts "#{@color}"
    @emotional_growth += 1
    if @emotional_growth % 5 == 0
      level = @emotional_growth / 5
      puts "Level up! #{@name} is at level #{level}"
    end

    process_time
  end

  def eat
    @hungriness_level = 10
    puts "#{@name} ate like 6 bags of marshmallows (yo...)"

    process_time
  end

  def drink
    puts "#{@name} ran to the river and lapped up #{10 - @thirst_level} mouthfuls of water"
    @thirst_level = 10

    process_time
  end

  def sleep
    @is_asleep = true
    puts "#{@name} curled up and fell asleep"

    process_time
    process_time
    process_time
  end

  def play
    puts "#{@name} takes out their yo-yo and walks a dog AND THEN JUMPS IN THE AIR AND FLIES"

    process_time
  end

  def process_time
    puts "The passage of time moves on..."
    if @thirst_level > 0
      @thirst_level -= 1
    else
      if @is_asleep
        @is_asleep = false
        puts "#{@name} woke up!"
      end
      puts "#{@name} breaths FIRE ON YOU!"
    end

    if @hungriness_level > 0
      @hungriness_level -= 1
    else
      if @is_asleep
        @is_asleep = false
        puts "#{@name} woke up!"
      end
      puts "#{@name} is hangry! They EAT YOU!"
      exit
    end
  end
end

nachos_dragon = BabyDragon.new("NACHO", "yellow")

nachos_dragon.eat

nachos_dragon.sleep
puts nachos_dragon.special_behavior
nachos_dragon.drink

10.times do
  nachos_dragon.emotional_release
end

# 100.times do |i|
#   puts "This is the #{i}th time playing:"
#   dees_dragon.play
# end
