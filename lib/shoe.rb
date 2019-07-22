class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand

    if !(BRANDS.include?(@brand)) 
    # if the brand is not included then include it
     BRANDS << @brand # shovel in the brand
     end

  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def brand= (brand)
    self.condition = "new" # check the class to see if there is a new shoe
    puts "Your shoe is as good as new!" # if there is, display this method
  end

end