require 'pry'

class CashRegister
  
  attr_accessor :total, :discount

  
  def initialize (discount=0)
  #   sets an instance variable @total on initialization to zero (FAILED - 1)
  #   optionally takes an employee discount on initialization (FAILED - 2)
    @total = 0
    @discount = discount
  end
  
  
  def add_item (title, price, quantity=1)
  #   accepts a title and a price and increases the total (FAILED - 4)
  #   also accepts an optional quantity (FAILED - 5)
  #   doesn't forget about the previous total (FAILED - 6)
    @price = price
    @quantity = quantity
    @items ||= []
    if @quantity == 1
      @items << title
    else 
      @quantity.times do |i|
        @items << title
      end
    end
        
    @total = @total + (@price*@quantity)
  end
  
  def apply_discount
  #   the cash register was initialized with an employee discount
  #     applies the discount to the total price (FAILED - 7)
  #     returns success message with updated total (FAILED - 8)
  #     reduces the total (FAILED - 9)
  #   the cash register was not initialized with an employee discount

    
    if @discount==0 
      "There is no discount to apply."
    else
      @total = (@total * (1-(@discount/100.0))).round
      "After the discount, the total comes to $#{@total}."
    end
  end
  
  def items
  @items
  end
  
  def void_last_transaction
    @total = @total - (@price*@quantity)  #   subtracts the last transaction from the total (FAILED - 12)    
  end
  
end 