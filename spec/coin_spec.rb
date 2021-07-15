require('rspec')
require('coin')
require('pry')

describe('#coin') do
  it("return a penny for one cent") do
    expect(coin(1)).to(eq("pennies: 1"))
  end
end

