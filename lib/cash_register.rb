class CashRegister
  
  attr_accessor :total, :discount, :last_transaction 
  
  def initialize(discount = nil)
    @@all = [] 
    @total = 0 
    @discount = discount
    @last_transaction = 0
  end
  
  def add_item(title, price, qty = nil)
    if !qty
      @@all << title
      @total += price
      @last_transaction = price
    else
      for i in 1..qty do
        @@all << title
      end
      @total += price * qty
      @last_transaction = price * qty 
    end
  end
  
  def apply_discount
    if @discount
      @total = (@total - (@total * (@discount * 0.01)))
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end
  end
  
  def items
    @@all 
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
  
end