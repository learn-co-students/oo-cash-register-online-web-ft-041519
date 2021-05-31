require 'pry'

class CashRegister
  
  attr_accessor :total, :discount
  attr_reader :items
  
  def initialize(discount = 0 )
    # binding.pry
    @discount = discount
    @total = 0 
    @items = []
  end 
  
  def add_item(title, price, quantity = 1) 
   # binding.pry 
   @total += price * quantity #=> previous total = last_transaction
   @previous_total = price * quantity
   quantity.times do 
     @items << title
   end 
  end 
  
  def apply_discount
    # binding.pry 
    if @discount != 0 
      @total = @total - @discount * 10 
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end 
  end 
  
  def void_last_transaction
   # binding.pry 
      @total = @total - @previous_total
  end 
  
end 
