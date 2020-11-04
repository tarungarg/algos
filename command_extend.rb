
# Command pattern encapuslates a request as an object thereby letting you parameterizing other objects with different requests. queue or log requests and support undoable actions

# Remote is a Command Pattern Class which accepts objects as a request and perform undoable action

class Light

  def execute
    puts 'please press on and off'
  end

  def on
    puts 'Light On'
  end

  def off
    puts 'light off'
  end
end

class LightOnCommand
    
  def initialize(light)
      @light = light
  end

  def execute
    @light.on()
  end
end

class LightOffCommand
    
  def initialize(light)
      @light = light
  end

  def execute
    @light.off()
  end
end


class Remote

  def set_command(command)
    command.execute()
  end
end


remote = Remote.new
light = Light.new
remote.set_command(LightOnCommand.new(light))
remote.set_command(LightOffCommand.new(light))
