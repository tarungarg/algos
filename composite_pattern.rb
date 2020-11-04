# In software engineering, the composite pattern is a partitioning design pattern. The composite pattern describes that a group of objects are to be treated in the same way as a single instance of an object. The intent of a composite is to “compose” objects into tree structures to represent part-whole hierarchies. Implementing the composite pattern lets clients treat individual objects and compositions uniformly.

class Menu
  def initialize
    @items = []
  end

  def add(item)
    @items.push(item)
  end

  def list_items(type)
    puts 'List of items for ' + type + ' ' +  @items.join(',')
  end
end

class BF < Menu
  def initialize
    super
    @sub_menu_items = []
  end

  def add_sub_menu(item)
    @sub_menu_items.push(item)
  end

  def remove_sub_menu(item)
    @sub_menu_items.remove(item)
  end

  def list_items
    super('BF')
    puts 'Sub menu items we have ' + @sub_menu_items.join(',')
  end
end

bf = BF.new

['Prantha', 'Chai', 'Mathi'].each do |item|
  bf.add(item)
end

['Dessert', 'Rasgulla', 'Gulabjamun'].each do |item|
  bf.add_sub_menu(item)
end

bf.list_items;

# Output 
# List of items for BF Prantha,Chai,Mathi
# Sub menu items we have Dessert,Rasgulla,Gulabjamun
