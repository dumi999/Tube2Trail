class LikedActivitiesController < ApplicationController

  def create
    @liked_activity = current_user.liked_activities.new(activity_id: params[:activity_id])

    if @liked_activity.save
      flash[:success] = "Activity liked successfully!"
    else
      flash[:error] = @liked_activity.errors.full_messages.to_sentence
    end

    # Find the next activity in line based on your criteria
    next_activity = Activity.where("id > ?", params[:activity_id]).first

    if next_activity
      redirect_to activity_path(next_activity)
    else
      redirect_to activities_path, notice: "No next activity found."
    end
  end


  def destroy
    @liked_activity = current_user.liked_activities.find(params[:id])
    @liked_activity.destroy
    redirect_to activities
  end

end
