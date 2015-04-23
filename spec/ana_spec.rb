require('rspec')
require('ana')
require('pry')

describe('String#ana') do
  it("returns a list of array arguments that are anagrams of string input") do
    expect(("cat").ana("tca")).to(eq(["tca"]))
  end
end
