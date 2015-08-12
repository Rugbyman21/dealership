require('rspec')
require('dealership')

describe(Dealership) do
  describe('#name') do
    it("stores the name of dealership") do
      test_dealership = Dealership.new("Crazy Eddie's Crazy Deals")
      expect(test_dealership.name()).to(eq("Crazy Eddie's Crazy Deals"))
    end
  end

  describe('#id') do
    it("returns the id of the dealership") do
      test_dealership = Dealership.new("Crazy Eddie's Crazy Deals")
      expect(test_dealership.id()).to(eq(1))
    end
  end

  describe('#cars') do
    it("initially returns an empty array of cars for the dealership") do
      test_dealership = Dealership.new("Crazy Eddie's Crazy Deals")
      expect(test_dealership.cars()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds a dealership to the array of saved dealerships") do
      test_dealership = Dealership.new("Crazy Eddie's Crazy Dealership")
      test_dealership.save()
      expect(Dealership.all()).to(eq([test_dealership]))
    end
  end
end
