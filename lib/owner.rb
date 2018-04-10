class Owner
  # code goes here
  attr_accessor :pets
  attr_reader :all

  @@all = []

  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fishes
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end
end
