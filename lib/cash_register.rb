class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
  end 
  
  def add_item(item_name, price)
    @items.push({item_name => price})
  end 
  
  
end 
