class LikedActivitiesController < ApplicationController
  def create
    @liked_activity = current_user.liked_activities.new(activity_id: params[:activity_id])
    @liked_activity.liked = params[:liked] == 'true'
    if @liked_activity.save
      flash[:success] = "Activity liked successfully!"
      create_chatroom_for_activity(@liked_activity.activity)
    else
      flash[:error] = @liked_activity.errors.full_messages.to_sentence
    end

    redirect_to_next_activity
  end

  def destroy
    @liked_activity = LikedActivity.find(params[:id])
    @liked_activity.destroy

    # Find the next activity after the deleted one
    next_activity = Activity.where("id > ?", @liked_activity.id).first

    redirect_to_next_or_activities_path(next_activity)
  end

  private

  def create_chatroom_for_activity(activity)
    @chatroom = Chatroom.find_by(activity: activity)
    Chatroom.create(activity: activity) unless @chatroom
  end

  def redirect_to_next_activity
    next_activity = Activity.where("id > ?", params[:activity_id]).first

    redirect_to_next_or_activities_path(next_activity)
  end

  def redirect_to_next_or_activities_path(next_activity)
    if next_activity
      redirect_to activity_path(next_activity)
    else
      redirect_to activities_path
    end
  end
end
