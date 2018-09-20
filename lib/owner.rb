require 'pry'

class Owner
  attr_accessor :name, :count, :pets
  attr_reader :species

  @@owners = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
    @@count = +1
    @pets = {cats: [], dogs: [], fishes: []}
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@count = 0
  end

  def self.count
    @@count
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |pet, amount|
      # pet = key pets values = array instance of animal
      amount.each do |pet_instance|
        pet_instance.mood = "nervous"


      end
      amount.clear
    end
  end

  def list_pets
    p "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
