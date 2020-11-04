# abstract factory pattern
module HouseFactory
  def setRoom(str)
    case str
    when 'living'
      LivingRoom.new
    when 'dinning'
      DinningRoom.new
    else
      "Remote needs upgradation"
    end
  end
end

module CommandFactory

  def getCommandObj(str)
    case str
    when 'light on'
      Lights::LightsOn.new
    when 'light off'
      Lights::LightsOff.new
    else
      "Remote needs upgradation"
    end
  end
end

# stretgy pattern
class LivingRoom
  include CommandFactory

  def execute(cmd)
    command_Obj = getCommandObj(cmd)
    command_Obj.call(self)
  end

  def initialize
    puts 'i am in living room'
  end
  
  def singnal_on_name
    "87SJJ8XCM"
  end
end

class DinningRoom
  include CommandFactory

  def execute(cmd)
    command_Obj = getCommandObj(cmd)
    command_Obj.call(self)
  end

  def initialize
    puts 'i am in dinning room'
  end

  def singnal_on_name
    "XXXXXX"
  end
end


# stretgy pattern
module Lights
  def on(room)
      puts 'Lights are on hit singnal ' + room.singnal_on_name
  end

  def off(room)
    puts 'Lights are off hit singnal ' + room.singnal_on_name
  end

  def onwLights
  end

  def undo
  end

  class LightsOn
    include Lights
    
    def call(room_obj)
      on(room_obj)
    end
  end
  
  class LightsOff
    include Lights
    
    def call(room_obj)
      off(room_obj)
    end
  end
end

# command pattern
class Remote
  include HouseFactory

  def execute(room, command)
    room_obj = setRoom(room)
    room_obj.execute(command)
  end

  def change(room, command)
    room_obj = setRoom(room)
    room_obj.execute(command)
  end
end

remote = Remote.new
remote.execute('living', 'light on')
remote.change('dinning', 'light off')
