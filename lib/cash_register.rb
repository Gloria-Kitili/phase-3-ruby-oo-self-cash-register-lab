class CashRegister

    attr_accessor :total, :discount, :items

    def initialize(discount=0)
        @total = 0
        @discount = discount 
        @items = []
        @last_transaction = {}
    end

# def total
#     @total
# end

def add_item(title,price,quantity=1)
    @total += price * quantity 
    quantity.times do 
        @items << title
    #  self.total += price * quantity 
    #  quantity.times { self.items << title }
end
@last_transaction = [title,price,quantity]
end

#     @total += price*quantity
#     quantity.times { @items << title }
#     @last_transaction = {title: title, price: price, quantity:quantity}
# end

def apply_discount
    if @discount > 0
    @total = @total - (@total * (@discount/100.0)).to_i
        # self.total *= (1 - discount/100.0)
        "After the discount, the total comes to $#{total}."
        # @total *= (1 - @discount/100.0)
        # success_message = "Discount of #{@discount}% applied."
        # success_message += "The total after discount is $#{`%.2f` % @total}."
        #   return success_message
    else
        return "There is no discount to apply."
    end
end

# def items(*args)
#     case args.size
#     when 2
#     start_index, end_index = args
#     @items[start_index..end_index]
#     when 3
#         title,_, end_index = args
#         quantity.times.map {title}
#     else
#         @items
#     end
# end  

def void_last_transaction
    last_title, last_price, last_quantity = @last_transaction
    @total -= last_price * last_quantity
    @items.pop(last_quantity)
    @total = 0 if @items.empty?
    @total 

    # last_item = items.pop 
    #  self.total -= last_item.price
    #   self.total = 0.0 if items.empty?
    #     if @items.empty?
    #         @total = 0
    #     end 
    # end 
    # @total
end 
end 
#     attr_accessor :total, :discount :products, :transactions

# def initialize (discount = 0, total = 0, products = [])
#     @discount
#     @total
#     @products

# end

# def add_item (name, price, quantity = 1)
#  self.last_transaction = price* quantity
#  self.total 
  
