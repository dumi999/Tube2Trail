class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update]

  def index
    @events = Event.all
  end

  def show
    @activity = @event.activity
    @chatroom = @event.activity.chatroom
  end

  def new
    @event = Event.new
    @event.user_id = current_user.id
    @event.activity_id = params[:activity_id]
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:date, :creator, :user_id, :activity_id)
  end
end
