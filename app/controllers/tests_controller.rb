class TestsController < ApplicationController
  before_action :logged_in

  def new
    @quiz = Quiz.find_by(id: params[:id])
    test = Test.find_by(user_id: session[:user_id], quiz_name: @quiz.name)
    if test
      redirect_to root_url
    end
    @ques_no = 0
    @question = @quiz.questions[@ques_no]
    unset_answer
  end

  def create
    @quiz = Quiz.find_by(id: params[:id])
    @ques_no = params[:ques_no].to_i
    if @ques_no == 0
      @test = Test.new(user_id: session[:user_id], quiz_name: @quiz.name)
      @test.score = 0
    elsif @ques_no == 4
      @test = Test.find_by(user_id: session[:user_id], quiz_name: @quiz.name)
      if correct_submission?
        @test.score += 1
      end
      @test.save
      return redirect_to root_url
    else
      @test = Test.find_by(user_id: session[:user_id], quiz_name: @quiz.name)
    end
    if correct_submission?
      @test.score += 1
    end
    @test.save
    @ques_no += 1
    @question = @quiz.questions[@ques_no]
    unset_answer
    render 'new'
  end

  private

  def correct_submission?
    if params[:question][:correct_choice_id].to_i == @quiz.questions[@ques_no].correct_choice_id
      true
    else
      false
    end
  end

  def logged_in
    unless logged_in?
      redirect_to login_url
    end
  end

  def unset_answer
    @question.correct_choice_id = nil
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
