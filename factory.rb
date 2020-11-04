require 'json'

class Flyweight
  def init(shared_state)
    @shared_state = shared_state
  end

  def operation(unique_state)
    s = @shared_state
    u = @unique_state
    puts "Flyweight: Displaying shared (#{s}) and unique (#{u}) state."
  end

end


class FlyweightFactory
  def init(inital_flyweight)
    @flyweight = {}
    inital_flyweight.each do |state|
      @flyweight[get_key(state)] = Flyweight.new(state)
    end
  end
  
  def get_key(state)
    state.sort.join('_')
  end

  def get_flyweight(shared_state)
    key = get_key(shared_state)

    if !@flyweights.key?(key)
      puts "FlyweightFactory: Can't find a flyweight, creating new one."
      @flyweights[key] = Flyweight.new(shared_state)
    else
      puts 'FlyweightFactory: Reusing existing flyweight.'
    end

    @flyweights[key]
  end

  def list_flyweights
    puts "FlyweightFactory: I have #{@flyweights.size} flyweights:"
    print @flyweights.keys.join("\n")
  end
end

def add_car_to_police_database(factory, plates, owner, brand, model, color)
  puts "\n\nClient: Adding a car to database."
  flyweight = factory.get_flyweight([brand, model, color])
  # The client code either stores or calculates extrinsic state and passes it to
  # the flyweight's methods.
  flyweight.operation([plates, owner])
end


factory = FlyweightFactory.new([
                                 %w[Chevrolet Camaro2018 pink],
                                 ['Mercedes Benz', 'C300', 'black'],
                                 ['Mercedes Benz', 'C500', 'red'],
                                 %w[BMW M5 red],
                                 %w[BMW X6 white]
                               ])

factory.list_flyweights

add_car_to_police_database(factory, 'CL234IR', 'James Doe', 'BMW', 'M5', 'red')

add_car_to_police_database(factory, 'CL234IR', 'James Doe', 'BMW', 'X1', 'red')

puts "\n\n"

factory.list_flyweights