require "pry"

class CashRegister
    attr_accessor :cash, :discount, :total, :items, :last_transaction_amount
    attr_reader

    

    def initialize(discount = 0)
        # @cash =
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        sub_total = price * quantity
        self.total += sub_total 
        # self.total = price

        quantity.times do
            @items << title
        end

        @last_transaction_amount = sub_total

    end

    def apply_discount
        discount_percent = self.discount*0.01
        discounted_amount = self.total*discount_percent
        self.total -= discounted_amount
        # self.total-self.total*=(self.discount*0.01)
        if discount > 0 
            "After the discount, the total comes to $#{self.total.to_i}."
            else "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction_amount
    end

end

test = CashRegister.new(20)
# test.add_item("macbook air", 1000)
# test.apply_discount

binding.pry