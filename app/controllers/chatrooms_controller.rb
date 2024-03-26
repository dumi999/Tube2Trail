class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: [:show]

  def index
    @activities = current_user.activities_liked
    @chatrooms = @activities.map do |activity|
      activity.chatroom
    end
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
