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

  def apply_discount
    result_message = ""

    if @discount == 0
      result_message = "There is no discount to apply."
    else
      self.total = self.total - (self.total * discount/100)
      "After the discount, the total comes to $#{self.total}."
    end
    result_message
  end
end
