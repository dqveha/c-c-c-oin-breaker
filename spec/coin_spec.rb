require('rspec')
require('coin')
require('pry')

describe('Coins') do
  it("return a penny for one cent") do
    bank = Coins.new()
    expect(bank.coin(1)).to(eq("
    Pennies: 1
    Quarter: 0
    "))
  end

  it("return a quarter for values < 25") do
    bank = Coins.new()
    expect(bank.coin(26)).to(eq("
    Pennies: 1
    Quarter: 1
    "))
  end
end

