require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  def setup
    @usr = User.create(name: "user", email: "user@mail.com", password: "12345", password_confirmation: "12345")
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should redirect to home if not logged in from show" do
    get :show, {id: 1}, nil, nil
    assert_redirected_to controller: :static_pages, action: :home
  end

  test "should get show if logged in" do
    get :show, {id: @usr.id}, {user_id: @usr.id}, nil
    assert_response :success
  end

  test "should get edit if logged in" do
    get :edit, {id: @usr.id}, {user_id: @usr.id}, nil
    assert_response :success
  end

  test "should redirect to home if not logged in from edit" do
    get :edit, {id: @usr.id}, nil, nil
    assert_redirected_to controller: :static_pages, action: :home
  end

  test "user should edit their own profile only" do
    get :edit, {id: @usr.id}, {user_id: 3}, nil
    assert_redirected_to controller: :static_pages, action: :home
  end

  test "user should update if logged in" do
    patch :update, {id: @usr.id, user: {name: :hello, email: "hello@mail.com", 
                                         password: "12345", password_confirmation: "12345"}}, {user_id: @usr.id}, nil
    assert_template :show
  end

  test "should redirect to home if not logged in from update" do
    patch :update, {id: @usr.id, user: {name: :hello, email: "hello@mail.com", 
                                         password: "12345", password_confirmation: "12345"}}, {user_id: @usr.id+4}, nil
    assert_redirected_to controller: :static_pages, action: :home
  end

  test "should render new if email already exist" do
    post :create, {user: {name: :hello, email: "user@mail.com",
                          password: "12345", password_confirmation: "12345"}}, nil, nil
    assert_template :new
  end

  test "should log in user after successful creating new user" do
    post :create, {user: {name: :hello, email: "hello@mail.com",
                          password: "12345", password_confirmation: "12345"}}, nil,nil
    user = User.find_by_email('hello@mail.com')
    assert_redirected_to user
    assert session[:user_id]
  end

  test "should render new if validation on model fails" do
    post :create, {user: {name: :hello, email: "", password: "", password_confirmation: ""}}, nil, nil
    assert_template :new
  end

end
