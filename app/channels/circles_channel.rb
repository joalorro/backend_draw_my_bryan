class CirclesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "circles_channel"
    puts "sup"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_circles data 
    
  end 

  def self.all_circles circles 
    ActionCable.server.broadcast('circles_channel', history:circles)
  end 
end
