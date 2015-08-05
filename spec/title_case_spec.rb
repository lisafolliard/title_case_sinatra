require('rspec')
require('title_case')
require('pry')

describe('String#title_case') do
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

  it("Handles excess uppercase letters") do
    expect(("I REALLY LOVE ONIONS").title_case()).to(eq("I Really Love Onions"))
  end

  it("Normalizes CrAzY TeXtXxX") do
    expect(("I rEaLlY lOvE oNiOns").title_case()).to(eq("I Really Love Onions"))
  end

  it("ignores numbers") do
    expect(("6 onions").title_case()).to(eq("6 Onions"))
  end

  it("handles green eggs and ham") do
    expect(("green eggs and ham").title_case()).to(eq("Green Eggs and Ham"))
  end
end
