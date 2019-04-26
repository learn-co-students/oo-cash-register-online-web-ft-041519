require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items, :last_trans

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price*quantity)
    quantity.times {@items << title}
    @last_trans = price
  end
  
  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      @total = @total*(1.00-(discount/100.00))
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def void_last_transaction
    @total -= @last_trans
  end
end