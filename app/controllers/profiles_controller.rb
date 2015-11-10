class ProfilesController < OpenReadController
  before_action :set_profile, only: [:update, :destroy]

  def index
    @profiles = Profile.all

    render json: @profiles
  end

  def show
    @profile = Profile.find(params[:id])

    render json: @profile
  end

  def create
    @profile = current_user.profiles.new(profile_params)

    if @profile.save
      render json: @profile, status: :created, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  def update
    if @profile.update(profile_params)
      head :no_content
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @profile.destroy

    head :no_content
  end

  def set_profile
    @profile = current_user.profiles.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:surname, :given_name, :group)
  end

  private :set_profile, :profile_params
end
