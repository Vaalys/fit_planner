class ProfilesController < ApplicationController

  def new
    @profile = current_user.build_profile
  end

  def create
    @profile = current_user.create_profile!(profile_params)

    redirect_to session[:previous_url] || root_url
  end

  def edit
    @profile = Profile.find_by(params[:current_user])
  end

  def update
    @profile = current_user.profile

    if @profile.update_attributes!(profile_params)
      redirect_to(user_path(current_user.id))
    else
      flash[:error] = 'user was not updated'
    end
  end

  private

  def profile_params
    params[:profile].permit(:name, :weight, :waist_size, :height, :body_fat_p, :goal, :image_url, :bmi, :rep_max, :fastest_mile, :longest_run)
  end

end
