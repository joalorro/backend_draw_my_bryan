class CirclesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "circles_channel"
<<<<<<< HEAD
    puts "sup"
=======
    CirclesChannel.all_circles(Circle.all)
>>>>>>> implenting_action_cables
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
<<<<<<< HEAD
=======

  def send_circle data
    puts "receiving"
    puts data['x']
    Circle.create(x: data['x'], y: data['y'] , strokeWidth: data['strokeWidth'] ,strokeColor: data['strokeColor'])
    ActionCable.server.broadcast('circles_channel',
      x: data['x'],
      y: data['y'],
      strokeWidth: data['strokeWidth'],
      strokeColor: data['strokeColor']
    )

  end

  def self.all_circles circles
    ActionCable.server.broadcast('circles_channel', history:circles)
  end
>>>>>>> implenting_action_cables
end
