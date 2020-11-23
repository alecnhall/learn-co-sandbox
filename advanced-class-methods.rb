class Song
  attr_accessor :name
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self 
  end
 
  def self.all
    p @@all
  end
 
end

# Class Finders

class Person
  attr_accessor :name
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end
 
  def self.find_by_name(name)
    @@all.find{|person| person.name == name}
  end
 
end
 
Person.new("Grace Hopper")
Person.new("Sandi Metz")
 
sandi_metz = Person.find_by_name("Sandi Metz")
sandi_metz #=> #<Person @name="Sandi Metz">
 
grace_hopper = Person.find_by_name("Grace Hopper")
grace_hopper #=> #<Person @name="Grace Hopper">
 
avi_flombaum = Person.find_by_name("Avi Flombaum")
avi_flombaum