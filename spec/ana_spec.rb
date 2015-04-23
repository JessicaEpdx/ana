require('rspec')
require('ana')

describe('String#ana') do
  it("returns a list of array arguments that are anagrams of string input") do
    expect(("cat").ana(["act", "dog"])).to(eq(["act"]))
  end
end
