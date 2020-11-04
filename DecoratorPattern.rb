# design principle: classes are open for extension and close for modification

# Decorator pattern
# Attach additional responsiablility to an object dynamically
# It provide a flexible alternative to subclassing of extending functionality

# simple definition:  The Decorator pattern allows us to add behavior to a given object without having to add that behavior to the class of the object.

# design principle: classes are open for extension and close for modification

# Decorator pattern
# Attach additional responsiablility to an object dynamically
# It provide a flexible alternative to subclassing of extending functionality

# simple definition:  The Decorator pattern allows us to add behavior to a given object without having to add that behavior to the class of the object.

# Method 1

class Coffee
  attr_accessor :price
  def cost
    12
  end
end

module CoffeeWithCream
  def cost
    super + 12
  end
end

module CoffeeWithChoclate
  def cost
    super + 13
  end
end

coffee = Coffee.new
coffee.extend(CoffeeWithCream)
coffee.extend(CoffeeWithChoclate)
puts coffee.cost

# ------------------------------------------------------------------------------------------------
# Method 2
class Order
  attr_accessor :price

  def price
    3.3
  end
end

class Mocha
  attr_accessor :price

  def initialize(obj)
    @obj = obj
  end

  def price
    @obj.price += 1.2
  end
end

class Fries
  attr_accessor :price

  def initialize(obj)
    @obj = obj
  end

  def price
    @obj.price += 8
  end
end


order = Order.new
order = Mocha.new(order)
order = Fries.new(order)

puts order.price