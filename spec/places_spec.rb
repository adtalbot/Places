require('rspec')
require('Places')

describe(Place) do  
  describe("#description") do
    it("lets you give it a description") do
      test_place = Place.new("Georgia")  #Calls the initialize method
      expect(test_place.description()).to(eq("Georgia"))
    end
  end
end
