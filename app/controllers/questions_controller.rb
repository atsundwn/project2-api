class QuestionsController < OpenReadController
  before_action :set_question, only: [:update, :destroy]

  def index
    @questions = Question.all

    render json: @questions
  end

  def show
    @question = Question.find(params[:id])

    render json: @question
  end

  def create
    @question = current_user.profile.questions.create(question_params)

    if @question.save
      render json: @question, status: :created, location: @question
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  def update
    if @question.update(question_params)
      render json: @question
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @question.destroy

    head :no_content
  end

  def set_question
    @question = current_user.profile.questions.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:topic, :profile_id)
  end

  private :set_question, :question_params
end
