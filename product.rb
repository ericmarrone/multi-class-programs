class Product
  @@shelf = []
  def initialize(name, base_price, tax_rate)
    @name = name
    @base_price = base_price
    @tax_rate = tax_rate

    @@shelf << self

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

  # writers
  def name=(name)
    @name = name
  end

  def base_price=(base_price)
    @base_price = base_price
  end

  def tax_rate=(tax_rate)
    @tax_rate = tax_rate
  end

  #instance methods


  def total_price
    self.base_price * (1 + self.tax_rate)
  end

  def self.shelf
    @@shelf
  end

end

# tb = Product.new("TB", 2.0, 0.15)
# tg = Product.new("Tg", 2.0, 0.15)
# # puts tb.inspect
# # puts tb.total_price
# puts Product.shelf.inspect
