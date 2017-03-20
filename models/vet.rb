class Owner
  #attr_reader is a getter
  attr_reader :pets
  attr_reader :name
  # initialize is the constructor
  def initialize (name)
    @name = name
  end


  # This is the setter for pets.
  # pets.each do |pet| looks at the pets argument (it's an array) and does something for each item, one by one.
  # In this case, it sets each pet's owner to be self.
  # 'self' refers to the instance variable that .pets was used with. In this case either Sue or Nathan.
  # (refer to vet_spec.rb)
  def pets=(pets)
    @pets = pets
    pets.each do |pet|
      pet.owner = self
    end
  end

  # We're converting an owner instance into a string.
  # "#{variable}" in the vet_spec.rb will look in this class for what it needs to convert to a string.
  # In this case, it's @name.
  def to_s
    @name
  end
end



class Pet
# attr_accessor will set up a setter and a getter
  attr_accessor :owner
  def initialize(name, species)
    @name = name
    @species = species
  end
end
