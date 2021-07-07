class CashRegister 
  
  attr_accessor :total, :discount, :list 
  
  def initialize(discount=0)
    @total = 0 
    @discount = discount 
    @list = [] 
    @last_transaction = 0 
  end 
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity 
    quantity.times {@list << title} 
    @last_transaction = price * quantity 
  end 
  
  def apply_discount 
    if @discount != 0 
      @total = (@total*(1-@discount/100.0)).round 
      "After the discount, the total comes to $#{total}."
    else 
      "There is no discount to apply."
    end 
  end 
  
  def items 
    @list 
  end 
  
  def void_last_transaction 
    @total = @total - @last_transaction
  end 
end 