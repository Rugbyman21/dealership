require('rspec')
require('dealership')

describe('#name') do
  it("stores the name of dealership") do
    test_dealership = Dealership.new("Crazy Eddie")
    expect(test_dealership.name()).to(eq("Crazy Eddie"))
  end
end
