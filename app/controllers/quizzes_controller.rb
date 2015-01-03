class QuizzesController < ApplicationController
  before_action :should_be_admin

  def create
    Quiz.create(quiz_params)
    redirect_to root_url
  end

  def new
    @quiz = Quiz.new
    5.times do 
      question = @quiz.questions.build
      3.times do
        question.choices.build
      end
    end
  end

  def edit
    @quiz = Quiz.find_by(id: params[:id])
  end

  def update
    @quiz = Quiz.find_by(id: params[:id])
    @quiz.update(quiz_params)
    redirect_to root_url
  end

  def destroy
    quiz = Quiz.find_by(id: params[:id])
    quiz.destroy
    redirect_to root_url
  end

  private

  def quiz_params
    params.require(:quiz).permit(:id, :name, questions_attributes: [:id, :quiz_id, :statement, choices_attributes: [:id, :question_id, :statement] ])
  end

  def should_be_admin
    unless logged_in? && current_user.is_admin?
      redirect_to root_url
    end
  end

end
