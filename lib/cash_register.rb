class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
  end 
  
  def add_item(item_name, price, amount = 1)
    @total += price*amount
    @last_transaction = price*amount
    
    amount.times do 
      @items.push(item_name)
    end 
  end 
  
  def apply_discount
    if @discount != 0 
     @total = (@total * ((100.0 - @discount.to_f)/100)).to_i
     return "After the discount, the total comes to $#{total}."
     
    else 
     return "There is no discount to apply."
    end 
  end 
  
  def void_last_transaction 
    if @total != 0 
      @total = @total - @last_transaction
    
    else 
      return 0.0
    end     
  end 
  
end 
