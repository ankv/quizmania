require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  def setup
    @user = User.create(name: "user", email: "user@mail.com", password: "12345", password_confirmation: "12345")
  end

  test "should create session is user authenticated" do
    post :create, { session: {password: "12345", email: "user@mail.com"}}, nil, nil
    assert_redirected_to @user
  end

  test "should render new if user not authenticated" do
    post :create, { session: {password: "12345", email: "notuser@mail.com"}}, nil, nil
    assert_template :new
  end

  test "should redirect to root after destroy" do
    delete :destroy, nil, {user_id: @user.id}, nil
    assert_redirected_to root_url
  end

end
