require('rspec')
require('title_case')

describe('String#title') do
  it("capitalizes the first letter of a word") do
    expect(("onion").title_case()).to(eq("Onion"))
  end

  it("capitalizes the first letter series of words") do
    expect(("i like onions").title_case()).to(eq("I Like Onions"))
  end

  it("does not capitalize specific words i.e. for, nor, an, etc.") do
    expect(("Nor the and but an a or for").title_case()).to(eq("Nor the and but an a or for"))
  end

  it("capitalizes the exceptions words if they are the first in the string") do
    expect(("nor the and but an a or for").title_case()).to(eq("Nor the and but an a or for"))
  end
end
