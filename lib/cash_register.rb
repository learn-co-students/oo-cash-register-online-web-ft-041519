require "pry"

class CashRegister

attr_accessor :total, :discount, :items, :prev_total

def initialize(discount = 0) #optional dsicount arg
  @total = 0
  @discount = discount
  @items = []

end


def add_item(title, price, quantity = 1) #opt qty = 1 :if adding item will always be @ least 1
   counter = 0        # was hoping to use #if quantity > 1...something but couldnt figure it out
    while counter < quantity
      @items << title             #adds title to @array items each time a item is added
    counter += 1                   #trying to say: (title * quantity) = that many titles
    end
  @total += price*quantity              #have to use += cannot reset @total to = equation
  @prev_total = @total        #tracks the @prev_total when smthg is added.. price total is total
end


def apply_discount
  if discount > 0
  amt_off = (@total * discount)/100   #@total * discount.to_f does not work- dis: 20 = 20000.0 flt
  new_price = @total -= amt_off       #total = total - amt_off  *put into variable new_price*
  return "After the discount, the total comes to $#{new_price}."
else
  return "There is no discount to apply."
end
end


def void_last_transaction
  @total -= @prev_total  #total = total - prev_total
end

end