class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  @@all = []
  BRANDS = []
  def initialize(brand)
    @brand = brand
    BRANDS << brand unless BRANDS.include?(brand)
    Shoe.all << self
  end

  def self.all
    @@all
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end