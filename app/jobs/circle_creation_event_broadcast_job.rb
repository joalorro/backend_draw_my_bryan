class CircleCreationEventBroadcastJob < ApplicationJob
  queue_as :default

  def perform(circle)
    # Do something later
    ActionCable.server.broadcast('circles_channel', content: circle)
  end
end
