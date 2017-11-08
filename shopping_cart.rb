require './product.rb'

class ShoppingCart
  @@all_carts = []
  @@next_id  = 1000

  def initialize(name)
    @name = name
    @products = []
    @sub_total = 0
    @total_price = 0

    @id = @@next_id
    @@next_id += 1

  end

  #Readers

  def products
    @products
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  #instance and class methods

  def add_to_cart(product)
    @products << product
    @sub_total += product.base_price
    @total_price += product.total_price
    puts "Added to cart!"
  end

  def remove_to_cart(product)
    @products.deete(product)
    puts "Removed from cart!"
  end

  def total_cost_before
    @sub_total
  end

  def total_cost
    @total_price
  end

end

phone = Product.new("Phone", 700, 0.15)
charger = Product.new("Charger", 25, 0.15)
puts phone.inspect

my_shop_cart = ShoppingCart.new("mycart")

my_shop_cart.add_to_cart(phone)
my_shop_cart.add_to_cart(charger)
puts my_shop_cart.inspect
puts my_shop_cart.total_cost_before
puts my_shop_cart.total_cost
