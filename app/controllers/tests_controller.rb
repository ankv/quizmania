class TestsController < ApplicationController
  before_action :logged_in

  def new
    @quiz = Quiz.find_by(id: params[:id])
    unset_answers
  end

  def create
    @quiz = Quiz.find_by(id: params[:id])
    test = Test.new(user_id: session[:user_id], quiz_name: @quiz.name)
    test.score = calculate_score
    params.inspect
    test.save
    redirect_to root_url
  end

  private

  def logged_in
    unless logged_in?
      redirect_to login_url
    end
  end

  def unset_answers
    @quiz.questions.each do |ques|
      ques.correct_choice_id = nil
    end
  end

  def calculate_score
    score = 0
    ques_no = 0
    @quiz.questions.each do |ques|
      if ques.correct_choice_id == params[:quiz][:questions_attributes][ques_no.to_s][:correct_choice_id].to_i
        score += 1
      end
      ques_no += 1
    end
    score
  end
end
