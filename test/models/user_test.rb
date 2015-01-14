require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "ankit", email: "ankit@mail.com", password: "ankit", password_confirmation: "ankit")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "email should be present" do
    @user.email = " "
    assert_not @user.valid?
  end

  test "name should be present" do
    @user.name = ""
    assert_not @user.valid?
  end

  test "password should have minimum length" do
    @user.password = @user.password_confirmation = "abc"
    assert_not @user.valid?
  end

  test "email should not be duplicated" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end

  test "name should not be too long" do
    @user.name = "a"*51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a"*257
    assert_not @user.valid?
  end

  test "email validation should validate valid email" do
    emails = %w[anikit@mail.com abc@mail.com AFASDFAS@afkljsdklfjsad.alkfjlsa]
    emails.each do |e|
      @user.email = e
      assert @user.valid?
    end
  end

  test "email validation should not validate invalid email" do
    emails = %w[akldfjslakfjsadlkf .user@example.com@ ajfadfj@kadjfladsj@aldsjflsdfj @alsdjflsdf@alsdjf.com]
    emails.each do |e|
      @user.email = e
      assert_not @user.valid?, "#{e.inspect} should be invalid"
    end
  end
end
