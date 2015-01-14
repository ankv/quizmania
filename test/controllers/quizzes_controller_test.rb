require 'test_helper'

class QuizzesControllerTest < ActionController::TestCase
  def setup
    @user = User.create(name: "hello", email: "hello@mail.com", password: "12345", password_confirmation: "12345", is_admin: true)
    qz = Quiz.find_by_id(1)
    @quiz = qz.attributes.as_json
    @quiz[:questions_attributes] = {}
    i=0
    qz.questions.each do |q|
      @quiz[:questions_attributes][i.to_s] = {}
      @quiz[:questions_attributes][i.to_s] = q.as_json
      i += 1
    end
    i = 0
    qz.questions.each do |q|
      j=0
      q.choices.each do |c|
        @quiz[:questions_attributes][i.to_s][:choices_attributes] = {}
        @quiz[:questions_attributes][i.to_s][:choices_attributes][j.to_s] = c.as_json
        j+=1
      end
      i += 1
    end
  end

  test "should redirect to root if created" do
    post :create, {quiz: @quiz}, {user_id: @user.id}, nil
    assert_redirected_to root_url
  end

  test "only admin can create quiz" do
    @user.is_admin = false
    @user.save
    post :create, {quiz: @quiz}, {user_id: @user.id}, nil
    assert_redirected_to root_url
  end

  test "should render edit if validation fails" do
    @quiz[:name] = ""
    post :create, {quiz: @quiz}, {user_id: @user.id}, nil
    assert_template :edit
  end

  test "should be admin for action new" do
    @user.is_admin = false
    @user.save
    get :new, nil, {user_id: @user.id}, nil
    assert_redirected_to root_url
  end

  test "should return new if admin" do
    get :new, nil, {user_id: @user.id}, nil
    assert_response :success
  end

  test "should return edit if admin" do
    patch :edit, {id: 1}, {user_id: @user.id}, nil
    assert_response :success
  end

  test "should redirect to root if not admin in edit" do
    @user.is_admin = false
    @user.save
    get :edit, {id: 1}, {user_id: @user.id}, nil
    assert_redirected_to root_url
  end

  test "should redirect to root if quiz is not in database" do
    get :edit, {id: 7878}, {user_id: @user.id}, nil
    assert_redirected_to root_url
  end

  test "should return to root if admin" do
    @user.is_admin = false
    @user.save
    patch :update, {id: 1, quiz: @quiz}, {user_id: @user.id}, nil
    assert_redirected_to root_url
  end

  test "should redirect to root if update successfully" do
    patch :update, {id: 1, quiz: @quiz}, {user_id: @user.id}, nil
    assert_redirected_to root_url
  end

  test "should render edit if validation fails in update" do
    @quiz[:name] = ""
    patch :update, {id: 1, quiz: @quiz}, {user_id: @user.id}, nil
    assert_template :edit
  end

  test "should be admin in destroy" do
    @user.is_admin = false
    @user.save
    delete :destroy, {id: 1}, {user_id: @user.id}, nil
    assert_redirected_to root_url
  end

  test "should redirect to root if destroyed" do
    delete :destroy, {id: 1}, {user_id: @user.id}, nil
    assert_redirected_to root_url
  end

  test "should redirect to root if quiz not found in destroy" do
    delete :destroy, {id: 8786}, {user_id: @user.id}, nil
    assert_redirected_to root_url
  end

  test "should redirect to root if quiz not found in update" do
    patch :update, {id: 87687, quiz: @quiz}, {user_id: @user.id}, nil
    assert_redirected_to root_url
  end

end
