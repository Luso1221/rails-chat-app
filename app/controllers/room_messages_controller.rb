class RoomMessagesController < ApplicationController
    before_action :load_entities

  def create
    @room_message = RoomMessage.create user: current_user,
                                       room: @room,
                                       message: params.dig(:room_message, :message)
    # puts "AAAAA"+@room_message
  end

  protected

  def load_entities
    puts params
    @room = Room.find params.dig(:room_message, :room_id)
  end
  
end
