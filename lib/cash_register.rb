require 'pry'
class CashRegister
 attr_accessor :cash_register, :total, :discount, :price, :title, :quantity , :last_amount
  
   
 def initialize(discount= 0)
   @total = 0 
   @discount= discount
   @cart =[]
  end
  
  def add_item(title, price, quantity= 1)
    @title = title
    @price= price
    @quantity= quantity
    if quantity >1 
      i=0 
      while i < quantity
           @cart << @title 
           i+= 1 
         end 
       else 
          @cart << @title 
        end 
          @total += @quantity * @price
          @last_amount=@total
         
       
  end
 
  def apply_discount
    # void_transaction = @discount/100.to_f
    if @discount > 0 
      @discount= @discount/100.to_f
      @total= @total-(@total* (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
  @cart
 end
 
def void_last_transaction
   binding.pry
  self.total = self.total - @price
    if self.total == 0
      return @total= 0.0
    end
@total
end
end