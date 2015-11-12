class ProfilesController < OpenReadController
  before_action :set_profile, only: [:update, :destroy]

  def index
    if params[:user_id]
      @profile = Profile.where(user_id: params[:user_id])
    else
      @profile = Profile.all
    end
    render json: @profile
  end

  def show
    @profile = Profile.find(params[:id])

    render json: @profile
  end

  def create
    @profile = current_user.create_profile(profile_params)

    if @profile.save
      render json: @profile, status: :created, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  def update
    if @profile.update(profile_params)
      render json: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @profile.destroy

    head :no_content
  end

  def set_profile
    @profile = current_user.profile
  end

  def profile_params
    params.require(:profile).permit(:given_name, :surname, :group, :user_id)
  end

  private :set_profile, :profile_params
end
