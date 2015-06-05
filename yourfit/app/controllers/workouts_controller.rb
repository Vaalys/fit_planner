class WorkoutsController < ApplicationController
  before_action :authenticate_user!

  def show
    @workouts = current_user.workouts
    @workout = Workout.new()
  end

  def create
    @workout = Workout.new(workout_params)
    @workout.user_id = current_user.id
    @workout.save
    binding.pry
    redirect_to("/workouts")
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
    redirect_to("/workouts")

  end

  private
  def workout_params
    params.require(:workout).permit(:description, :set_count, :reps, :weight, :notes)
  end

end

# hardcode some views
  # nutrition table
  # make a nav for Progress, with weight as a drop down menu and a line graph on that page
# fix up workotus show table set up
# validate css and html!
# video cast
# HW
# Do I need a welcome_controller?
# Edit routes, only what I need
