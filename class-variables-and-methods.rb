class Album
  
  @@album_count = 0
  
  def initialize 
    @@album_count += 1 
  end
  
  def self.count 
    @@album_count
  end
  
  def release_date=(release_date)
    @release_date = release_date
  end
  
  def release_date
    @release_date
  end
end

# Private methods

class Bartender
  attr_accessor :name 
  
  BARTENDERS = []
  
  def initialize(name)
    @name = name
    BARTENDERS << self
  end
  
  def self.all 
    p BARTENDERS
  end
  
  def intro
    p "Hello, my name is #{name}!"
  end
  
  def make_drink 
    @cocktail_ingredients = []
    choose_liquor
    choose_mixer
    choose_garnish
    return "Here is your drink. It contains #{@cocktail_ingredients}"
  end
  
  private 
  
  def choose_liquor
    @cocktail_ingredients.push("vodka")
  end
  
  def choose_mixer
    @cocktail_ingredients.push("vermouth")
  end
  
  def choose_garnish
    @cocktail_ingredients.push("olives")
  end
  
end

phil = Bartender.new("Phil")
phil.intro

Bartender.all
