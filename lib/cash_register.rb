class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
  end 
  
  def add_item(item_name, price, amount = 1)
    @total += price*amount
    
    amount.times do 
  end 
  
  def apply_discount
    if @discount != 0 
     @total = (@total * (@discount/100).to_f)
     puts "After the discount, the total comes to #{total}"
      
    else 
     return "There is no discount to apply."
    end 
  end 
  
  
end 
