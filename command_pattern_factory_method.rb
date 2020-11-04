# factory method pattern returnning us factroies
module HouseFactory
  def setRoom(str, area)
    case str
    when 'living'
      LivingRoomFactory.getArea(area)
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
class LivingRoomFactory

  def initialize
    puts 'i am in living room'
  end

  def getArea(area)
    case area
    when 'bathroom'
      LivingRoomBathroom.new
    when 'room'
      LivingRoomRoom.new
    when 'balcony'
      LivingRoomBalcony.new
    when 'mirrorRoom'
      LivingRoomMirrorRoom.new
    else
      "Remote needs upgradation"
    end
  end
end

class LivingRoomBathroom < LivingRoomFactory
  def initialize
    puts 'i am in living room batroom'
  end

  def singnal_on_name
    "XXX1"
  end

  def singnal_off_name
    "XXY1"
  end
end

class LivingRoomRoom < LivingRoomFactory

  def initialize
    puts 'i am in living room master room'
  end

  def singnal_on_name
    "XXX2"
  end

  def singnal_off_name
    "XXY2"
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

  def execute(room, room_area, command)
    room_obj = setRoom(room, room_area)
    room_obj.execute(command)
  end

  def change(room, command)
    room_obj = setRoom(room)
    room_obj.execute(command)
  end
end

remote = Remote.new
remote.execute('living', 'bathroom', 'light on')
# remote.change('dinning', 'light off')
