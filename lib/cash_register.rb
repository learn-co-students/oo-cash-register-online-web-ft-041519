require 'pry'

class CashRegister
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  attr_accessor :total, :discount, :items, :item_last_scanned

  def add_item(item, price, quantity = 1)
    quantity.times do
      @items << item
    end
    @item_last_scanned = [item, price]
    @total += price.to_f * quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * (100 - discount)/100
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total -= @item_last_scanned[1]
    @items.pop
  end

  #binding.pry
end
