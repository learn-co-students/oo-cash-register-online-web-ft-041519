class CashRegister

  attr_accessor :title, :quantity, :price, :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @title = title
    quantity.times { @items << title }
    @price = price
    @quantity = quantity
    @total += price * quantity
  end

  def apply_discount
    new_total = 0
    new_total = 100 - @discount
    if new_total == 100
      "There is no discount to apply."
    else
      @total = new_total * 10
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @price
  end

end
