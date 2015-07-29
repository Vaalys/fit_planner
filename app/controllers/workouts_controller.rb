class WorkoutsController < ApplicationController
  before_action :authenticate_user!

  def show
    @workouts = current_user.workouts
    @workout = Workout.new()
  end

  def create
    @workout = Workout.new(workout_params)
    @workout.user_id = current_user.id
    @workout.save!
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
