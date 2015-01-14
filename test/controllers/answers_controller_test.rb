require 'test_helper'

class AnswersControllerTest < ActionController::TestCase

  def setup
    @user = User.create(name: "hello", email: "hello@mail.com", password: "12345", password_confirmation: "12345")
  end

  test "should get new if logged in" do
    get :new, {id: 1}, {user_id: @user.id}, nil
    assert_response :success
  end

  test "should redirect to login url if not logged in" do
    get :new, {id: 1}, nil, nil
    assert_redirected_to login_url
  end

  test "should flash and redirect to root if quiz has been taken by user" do
    Answer.create(user_id: @user.id, quiz_id: 1, score: 3)
    get :new, {id: 1}, {user_id: @user.id}, nil
    assert flash[:notice]
    assert_redirected_to root_url
  end

  test "should redirect to root path if user clicks back button" do
    get :new, {id: 1}, {user_id: @user.id, ques_no: 2}, nil
    assert_redirected_to root_url
  end

  test "should go to profile page if last question" do
    post :create, {id: 1, question: {correct_choice_id: 1}}, {user_id: @user.id, ques_no: 4, score: 2, quiz_id: 1}, nil
    assert_redirected_to @user
  end

  test "should increment ques no if not last quesion" do
    ques_no = 3
    post :create, {id: 1, question: {correct_choice_id: 1}}, {user_id: @user.id, ques_no: ques_no, score: 2, quiz_id: 1}, nil
    assert_template :new
    assert session[:ques_no].eql?(ques_no+1)
  end

end
