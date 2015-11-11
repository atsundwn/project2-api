class FistsController < OpenReadController
  before_action :set_fist, only: [:update, :destroy]

  def index
    @fists = Fist.all

    render json: @fists
  end

  def show
    @fist = Fist.find(params[:id])

    render json: @fist
  end

  def create
    @fist = current_user.profile.fists.create(fist_params)

    if @fist.save
      render json: @fist, status: :created, location: @fist
    else
      render json: @fist.errors, status: :unprocessable_entity
    end
  end

  def update
    if @fist.update(fist_params)
      render json: @fist
    else
      render json: @fist.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @fist.destroy

    head :no_content
  end

  def set_fist
    @fist = current_user.profile.fists.find(params[:id])
  end

  def fist_params
    params.require(:fist).permit(:value)
  end

  private :set_fist, :fist_params
end
