class CirclesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "circles_channel"
    puts "sup"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
