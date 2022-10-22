require "pry"

class CashRegister

    attr_accessor :total
    attr_reader :discount, :items
    
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items =[]
    end

    def add_item(title,price,amount = 1)
        @total += price * amount
        @last_item = price * amount
        amount.times {items << title}
    end

    def apply_discount
        if discount > 0
        n_discount = @total * discount/100
        @total -= n_discount
        "After the discount, the total comes to $#{total}."
        else
            "There is no discount to apply."
        end
    end
 
    def void_last_transaction
        @total -= @last_item
    end

end

# CashRegister.new(7)


# binding.pry