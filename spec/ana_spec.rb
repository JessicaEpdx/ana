require('rspec')
require('ana')
require('pry')

describe('String#ana') do
  it("returns a list of array arguments that are anagrams of string input") do
    expect(("cat").ana("tca,dog")).to(eq(["tca"]))
  end

  it("returns a list of array arguments that are anagrams even if they are longer") do
    expect(("act").ana("cat,cate,dog,hat")).to(eq(["cat"]))
  end
end
