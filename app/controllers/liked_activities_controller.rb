class LikedActivitiesController < ApplicationController

  def create
    @liked_activity = current_user.liked_activities.new(activity_id: params[:activity_id])
    @liked_activity.liked = params[:liked] == 'true'
    if @liked_activity.save
      flash[:success] = "Activity liked successfully!"
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

  def redirect_to_next_activity
    next_activity = Activity.where("id > ?", params[:activity_id]).first

    redirect_to_next_or_activities_path(next_activity)
  end

  def redirect_to_next_or_activities_path(next_activity)
    if next_activity
      redirect_to activity_path(next_activity)
    else
      redirect_to activities_path, notice: "No next activity found."
    end
  end
end
