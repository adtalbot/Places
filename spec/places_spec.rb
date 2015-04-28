require('rspec')
require('places')

describe(Place) do
    before() do
      Place.clear()
    end

  describe("#description") do
    it("lets you give it a description") do
      test_place = Place.new("Georgia")  #Calls the initialize method
      expect(test_place.description()).to(eq("Georgia"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a place to the array of saved places") do
      test_place = Place.new("Georgia")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved places") do
      Place.new("Georgia").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end
end
