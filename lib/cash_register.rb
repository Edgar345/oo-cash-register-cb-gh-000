class CashRegister
  attr_accessor :discount, :total
  def initialize discount = 0
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item title, price
  end
end
