require 'pry'
require_relative './cat.rb'
require_relative './dog.rb'
class Owner
  attr_reader :name, :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
    return @@all
  end

  def self.count
    return @@all.length
  end

  def self.reset_all
    @@all = []
    return @@all
  end

  def cats
     Cat.all.select {|kitty| kitty.owner.name == self.name}
  end

  def dogs
    Dog.all.select {|doggy| doggy.owner.name == self.name}
 end
end