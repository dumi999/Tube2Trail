class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: [:show]

  def index
    @chatrooms = Chatroom.all
  end

  def show
    @message = Message.new
    @user = User.find(params[:id])
    @activity = Activity.find(params[:id])
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
  end
end
