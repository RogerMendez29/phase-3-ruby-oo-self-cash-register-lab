require "pry"

class CashRegister 
attr_accessor :total, :discount, :quantity, :items, :last_transaction

    def initialize (discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction = 0
    end
    def add_item(title, price, quantity = 1)
        @last_transaction = price * quantity
        quantity.times do |i|
        @items << title 
        end
        self.total += @last_transaction
    end
    def apply_discount
        if @discount > 0
            self.total = total - (total * discount/(100))
            "After the discount, the total comes to $#{total}."
        else
            "There is no discount to apply."
        end
        
    end
    def void_last_transaction
        @total = @total - @last_transaction
        
    end
    
    
    
    
    
end

cash_register_with_discount = CashRegister.new(200)

cash_register_with_discount.add_item("macbook air", 1000)
cash_register_with_discount.apply_discount

