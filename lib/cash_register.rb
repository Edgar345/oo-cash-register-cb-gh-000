class CashRegister
  attr_accessor :discount, :total, :items
  def initialize discount = 0
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item title, price, quantity = 1
    self.items << { title: title, price: price}
    self.total += price * quantity
  end
end
