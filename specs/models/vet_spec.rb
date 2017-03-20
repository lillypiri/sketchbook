require 'rspec'
require_relative "../../models/vet"

describe Owner do
  it 'play area' do
    sue = Owner.new("Sue")
    pupper = Pet.new("Pupper", "Dog")
    sue.pet = [pupper]
    p sue.pets

    pupper.owner = sue
    p pupper.owner
  end
end
