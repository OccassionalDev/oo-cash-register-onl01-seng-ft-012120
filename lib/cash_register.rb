class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
  end 
  
  def add_item(item_name, price, amount = 1)
    @items.push(item_name)
    @total += price*amount
  end 
  
  def apply_discount
    if @discount == 0 
      puts "There is no discount to apply."
      
    else 
     @total = (@total * (@discount/100).to_f)
     puts "After the discount, the total comes to #{total}"
    end 
  end 
  
  
end 
