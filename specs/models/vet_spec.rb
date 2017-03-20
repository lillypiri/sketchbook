require 'rspec'
require_relative "../../models/vet"

describe Owner do
  it 'play area' do
    # def initialize (name) correlates to this.
    # Sue is passed as the name argument.
    sue = Owner.new("Sue")
    pupper = Pet.new("Pupper", "Dog")
    nathan = Owner.new("Nathan")
    snugglewumps = Pet.new("Snugglewumps", "Cat")
    # Sue is an instance of owner.
    # Sue has an instance variable called pets.
    sue.pets = [pupper]
    nathan.pets = [snugglewumps]
    
    # 'def to_s' is used to convert owner instances into strings.
    # (In this case, their names)
    # Anytime something is inside a #{} it calls .to_s on the instance
    # (in this case, owner is the instance it is calling it on.)
    puts "#{pupper.owner} is Pupper's owner."
    puts "#{snugglewumps.owner} is Snugglewumps' servant."
  end
end
