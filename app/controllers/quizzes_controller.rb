class QuizzesController < ApplicationController
  before_action :should_be_admin

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
     return redirect_to root_url
    else
      render 'edit'
    end
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
    if @quiz.update(quiz_params)
     return redirect_to root_url
    else 
      render 'edit'
    end
  end

  def destroy
    quiz = Quiz.find_by(id: params[:id])
    quiz.available = false
    quiz.save
    redirect_to root_url
  end

  private

  def quiz_params
    params.require(:quiz).permit(:id, :name, questions_attributes: [:id, :quiz_id, :statement,
                                  :correct_choice_id, choices_attributes: [:id, :question_id, :statement] ])
  end

  def should_be_admin
    unless logged_in? && current_user.is_admin?
      redirect_to root_url
    end
  end

end
