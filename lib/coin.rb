class Coins
  attr_accessor(:penny_counter, :nickel_counter, :dime_counter, :quarter_counter)

  def initialize()
    @penny_counter = 0
    @nickel_counter = 0
    @dime_counter = 0
    @quarter_counter = 0
  end

  def coin(value)
    until (value == 0) do
      if value >= 25
        value -= 25
        @quarter_counter += 1
      elsif value < 5
        value -= 1
        @penny_counter += 1
      end
    end
    coin_bank = "
    Pennies: #{@penny_counter}
    Quarter: #{@quarter_counter}
    "
  end 
end






#Notes 
#Value is in cents
#value > .99
#store it in var
#counter of coins
#have a until loop that it has to reach 0 to stop it
#The until loop subtracts 25, 10, 5, 1 based on if the number is greater than the number.
