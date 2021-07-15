require('rspec')
require('coin')
require('pry')

describe('Coins') do
  it("return a penny for one cent") do
    bank = Coins.new()
    expect(bank.coin(1)).to(eq("
    Pennies: 1
    Nickel: 0
    Dime: 0
    Quarter: 0
    "))
  end

  it("return a quarter for values < 25") do
    bank = Coins.new()
    expect(bank.coin(26)).to(eq("
    Pennies: 1
    Nickel: 0
    Dime: 0
    Quarter: 1
    "))
    
  end
  it("return 3 nickel for values < 15") do
    bank = Coins.new()
    expect(bank.coin(7)).to(eq("
    Pennies: 2
    Nickel: 1
    Dime: 0
    Quarter: 0
    "))
    
  end
  it("return a lot of coins nickel for values < 97") do
    bank = Coins.new()
    expect(bank.coin(97)).to(eq("
    Pennies: 2
    Nickel: 0
    Dime: 2
    Quarter: 3
    "))
    
  end
end

