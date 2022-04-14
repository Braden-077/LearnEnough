# frozen_string_literal: true 
class Integer
  def coin_combination
    quarters = self / 25 
    quarters.floor()
    dimes = self / 10
    dimes.floor()
    nickels = self / 5
    nickels.floor()
    pennies = self
    cents = {
      pennies: pennies,
      nickels: nickels,
      dimes: dimes, 
      quarters: quarters
    }
  end
end
