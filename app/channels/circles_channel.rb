class CirclesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "circles_channel"
    CirclesChannel.all_circles(Circle.all)
  end

  def unsubscribed
  end

  def send_circle data

    Circle.create(x: data['x'], y: data['y'] , strokeWidth: data['strokeWidth'] ,strokeColor: data['strokeColor'], username: data['username'])

    ActionCable.server.broadcast('circles_channel',
      x: data['x'],
      y: data['y'],
      strokeWidth: data['strokeWidth'],

      strokeColor: data['strokeColor'],
      username: data['username']
    )

  end

  def self.all_circles circles
    ActionCable.server.broadcast('circles_channel', history:circles)
  end

end

