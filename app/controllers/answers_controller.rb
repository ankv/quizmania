class AnswersController < ApplicationController
  before_action :should_be_logged_in

  def new
    quiz = Quiz.find_by(id: params[:id])
    answer = Answer.find_by(user_id: current_user.id, quiz_id: quiz.id)
    if answer
      flash[:notice] = "Quiz has been taken"
      redirect_to root_url
    end
    [:ques_no, :score].each { |k| session[k] = 0}
    session[:quiz_id] = params[:id]
    @question = quiz.questions[session[:ques_no]]
  end

  def create
    quiz = Quiz.find_by(id: session[:quiz_id])
    if session[:ques_no] == 4
      ans = Answer.new(user_id: current_user.id, quiz_id: session[:quiz_id],
                          score: session[:score])
      [:ques_no, :quiz_id, :score].each { |k| session.delete(k) }
      flash.now[:notice] = "Error occurred quiz could not be saved" if not ans.save
      return redirect_to current_user
    end
    session[:score] += quiz.questions[session[:ques_no]].correct_answer(
                      params[:question][:correct_choice_id].to_i )
    session[:ques_no] += 1
    @question = quiz.questions[session[:ques_no]]
    render 'new'
  end

  private

  def should_be_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end

end
