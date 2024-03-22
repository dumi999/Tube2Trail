class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all - current_user.activities
  end

  def show
    @activity = Activity.find(params[:id])
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :cover_image)
  end
end
