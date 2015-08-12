require('rspec')
require('vehicle')

describe('Vehicle') do

  describe('#make')
    it("stores the make of the vehicle") do
    test_vehicle = Vehicle.new("Honda", "Fit", 2000)
    expect(test_vehicle.make()).to(eq("Honda"))
  end

  describe('#model')
  it("stores the model of the vehicle") do
    test_vehicle = Vehicle.new("Honda", "Fit", 2000)
    expect(test_vehicle.model()).to(eq("Fit"))
  end
end
