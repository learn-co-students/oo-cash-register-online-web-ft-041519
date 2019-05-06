require 'pry'

class CashRegister
  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @transaction = 0
  end

  def add_item(title, price, quantity=1)
    @transaction = price * quantity
    quantity.times do
      @items << title
    end
    @total += @transaction
  end

  def apply_discount
    @total -= (@total * 0.2).to_int

    if @discount > 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end

  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @transaction
  end

end
