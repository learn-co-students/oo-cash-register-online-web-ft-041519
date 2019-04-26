require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items, :last_trans

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += (price*quantity)
    quantity.times {items << title}
    self.last_trans = price*quantity
  end
  
  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      self.total = total*(1.00-(discount/100.00))
      return "After the discount, the total comes to $#{self.total.to_i}."
    end
  end
  
  def void_last_transaction
    self.total -= self.last_trans
  end
end