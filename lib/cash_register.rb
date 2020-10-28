require 'pry'

class CashRegister

    attr_accessor :total, :discount

    def initialize(discount = 0)
        @total = 0
        @discount = discount 
        @cart = []
    end 


    def add_item(name, price, quantity = 1)
        @total += price * quantity
        @price = price
        @quantity = quantity
        quantity.times {@cart.push(name)}
    end 

    def apply_discount 
        @total = total - total * discount / 100.00
        if discount > 0
             "After the discount, the total comes to $#{@total.to_i}."
        else 
             "There is no discount to apply."
        end 
    end 

    def items
        @cart
    end 

    def void_last_transaction
        @total = @total - (@price * @quantity)
        @cart.pop()
        puts @cart
        if @cart.length == 0
            @total = 0.0

        end 
    end 
        
end 

#binding.pry 