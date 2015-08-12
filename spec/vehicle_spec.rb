require('rspec')
require('vehicle')

describe('Vehicle') do

  describe('#make') do
    it("stores the make of the vehicle") do
      test_vehicle = Vehicle.new("Honda", "Fit", 2000)
      expect(test_vehicle.make()).to(eq("Honda"))
    end
  end

  describe('#model') do
    it("stores the model of the vehicle") do
      test_vehicle = Vehicle.new("Honda", "Fit", 2000)
      expect(test_vehicle.model()).to(eq("Fit"))
    end
  end

  describe('#year') do
    it("stores the year of the vehicle") do
      test_vehicle = Vehicle.new("Honda", "Fit", 2000)
      expect(test_vehicle.year()).to(eq(2000))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves the vehicle information") do
      test_vehicle = Vehicle.new("Honda", "Fit", 2000)
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end

  describe(".clear") do
    it("empties all the saved vehicle infomation") do
      Vehicle.new("Honda", "Fit", 2000).save()
      Vehicle.clear()
      expect(Vehicle.all()).to(eq([]))
    end
  end
end
