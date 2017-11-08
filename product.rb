class Product
  def initialize(name, price, tax_rate)
    @name = name
    @base_price = price
    @tax_rate = tax_rate

  end

  #readers

  def name
    @name
  end

  def base_price
    @base_price
  end

  def tax_rate
    @tax_rate
  end

  #instance methods

  def total_price
    self.base_price * (1 + self.tax_rate)
  end


end

tb = Product.new("TB", 2.0, 0.15)
puts tb.inspect
puts tb.total_price
