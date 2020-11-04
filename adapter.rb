class ArrayV1
  def self.size
    puts 'i am size'
  end
end

module ArrayAdapter
  def size
    ArrayV2.length()
  end
end

class ArrayV2
  include ArrayAdapter

  def self.length
    puts 'i am length'
  end
end


aa = ArrayV2.new
aa.size()


