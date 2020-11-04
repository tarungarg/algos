# abstract factory
module RemoteWheelFactory
  def self.getAreaObj(str)
    case str
    when 'DinningRoom'
      DinningRoom.new
    when 'Room 1'
      Room1.new
    when 'Bathroom'
      Bathroom.new
    else
      puts 'Remote needs upgrade'
    end
  end
end

module RemoteState
  class OnState
    def initialize
      @currentState = 'On'
    end
  end

  class OffState
    def initialize
      @currentState = 'Off'
      resetRemote()
    end

    def resetRemote
    end
  end
end


# singleton pattern
class Remote
  include RemoteState
  include RemoteWheelFactory

  @@areaOptions = []
  @@buttons = []
  @@remote = Remote.new

    class << self
      def create
        generateAreaOptions()
        generateButtons()
        @currentRemoteState = RemoteState::OnState.new
        @@remote
      end
    
      def generateAreaOptions
        ['DinningRoom', 'Room 1', "Bathroom", "Kitchen"].each do |area|
          @@areaOptions.push(area)
        end
      end
    
      def generateButtons
        ['Fan', 'Lights', 'Tv'].each do |option|
          @@buttons.push(option)
        end
      end

      def signal(str)
        puts str
      end
    end

    def changeWheel
      # @@areaOptions.sample || 'DinningRoom'
      'DinningRoom'
    end

    def selectedWheelObj
      RemoteWheelFactory.getAreaObj(changeWheel)
    end

    def getAreas
        @@areaOptions
    end
    
    def getButtons
        @@buttons
    end

    def pressButton(state, buttonType)
      selectedWheelObj.sendSignal(buttonType, state)
    end

  private_class_method :new
end

module DinningRoomFanState
  class OnState
    def changeState
      @currentState = 'On'
    end
  end

  class OffState
    def changeState
      @currentState = 'Off'
    end
  end
end

module DinningRoomAssets
  module CillingFan
      def initialize
        @currentState = CillingFanOffState
      end

      def setState(new_state)
        if (new_state == 'On')
          @currentState = CillingFanOnState
        else
          @currentState = CillingFanOffState
        end
      end

      class CillingFanOnState
        def sendSignal
          Remote.signal('I AM CILLING FAN ON')
        end
      end

      class CillingFanOffState
        Remote.signal('I AM CILLING FAN OFF')
      end
  end
end

module DinningRoomAssets
  module Tv
      class TvOnState
        def sendSignal
          Remote.signal('I AM Tv ON')
        end
      end

      class TvOffState
        Remote.signal('I AM TV OFF')
      end
  end
end

module DinningRoomAssetsFacotry
  def assetObj(btn)
    case btn
    when 'Fan'
      DinningRoomAssets::CillingFan.new
    when 'Tv'
      DinningRoomAssets::Tv.new
    when 'Lights'
     DinningRoomAssets::CillingLights.new
    else
      puts 'Remote needs upgrade'
    end
  end
end

class DinningRoom
  include DinningRoomAssetsFacotry
  def sendSignal(btn, state)
    asset = assetObj(btn)
    asset.setState(state)
  end

end



class Room1
end

class Bathroom
end

remote = Remote.create
remote.selectedWheelObj
remote.pressButton('On', 'Fan')