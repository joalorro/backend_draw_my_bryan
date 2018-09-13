class MessagesChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'messages_channel'
    MessagesChannel.all_messages(Message.all)
  end

  def send_message(message)
    Message.create(content: message['content'], username: message['username'])
    ActionCable.server.broadcast('messages_channel',content: message['content'],username: message['username'])
  end

  def self.all_messages(messages)
    ActionCable.server.broadcast('messages_channel', history: messages)
  end
end
