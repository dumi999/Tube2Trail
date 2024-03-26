class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all - current_user.activities
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy

    # Redirect to the activities index page after deletion
    redirect_to activities_path, notice: "Activity deleted successfully."
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :address)
  end
end
