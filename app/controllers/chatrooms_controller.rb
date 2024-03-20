class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: [:show]

  def index
    @chatrooms = Chatroom.all
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @user = current_user
    @activity = @chatroom.activity
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
  end
end
