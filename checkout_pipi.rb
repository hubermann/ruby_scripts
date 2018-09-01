class ProductItem
    attr_accessor :code, :price, :quantity, :discount_rule
    def initialize(code, price, quantity, discount_rule = nil)
      @code = code
      @price = price
      @quantity = quantity
      @discount_rule = discount_rule
    end

    def discount_with_rule
      return 0 if discount_rule.nil?
      discount_rule.apply_with(self)
    end

    def total
      price * quantity
    end
  end

  class Checkout
    attr_accessor :items
    def initialize(items)
      @items = items
    end

    def total
      (items.inject(0){|i,v| i + v.total} - discount).round(2)
    end

    def discount
      DiscountPoliticy.new(items).apply
    end
  end

  class DiscountPoliticy
    attr_accessor :items
    def initialize(items)
      @items = items
    end

    def apply
      items.inject(0){|i,v| i + v.discount_with_rule}
    end
  end

  class DosXUno
    def self.apply_with(product)
      total = product.total / 2
      return total if product.quantity.even?
      total + product.price
    end
  end


  class Porcentual
    PORCENTUAL = 0.05
    def self.apply_with(product)
      (product.total * PORCENTUAL) if product.quantity > 3
    end
  end

#wokspace

items = [
  ProductItem.new('1', 14.00, 3, DosXUno),
  ProductItem.new('2', 14.00, 4, Porcentual),
  ProductItem.new('3', 14.00, 2),
  ProductItem.new('4', 14.00, 1)
]



p c= Checkout.new(items)
