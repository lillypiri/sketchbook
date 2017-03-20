class Owner

  attr_reader :pets
  attr_reader :name

  def initialize (name)
    @name = name
  end

  def pet=(pets)
    @pets = pets
    pets.each do |pet|
      pet.owner = self
    end
  end
end



class Pet

  attr_accessor :owner
  def initialize(name, species)
    @name = name
    @species = species
  end
end
