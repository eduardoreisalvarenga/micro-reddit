require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(user_name: 'Jason', email: 'jason@gmail.com')
  end

  test 'user should be valid' do
    assert @user.valid?
  end

  test 'user name should not be empty' do
    @user.user_name = ''
    assert_not @user.valid?
  end

  test 'user name should be at leats 4 characteres' do
    @user.user_name = 'xxx'
    assert_not @user.valid?
  end

  test 'user name should not be more than 15 characteres' do
    @user.user_name = 'x' * 16
    assert_not @user.valid?
  end

  test 'user name should be unique' do
    dup_user = @user.dup
    dup_user.user_name = @user.user_name.upcase
    @user.save
    assert_not dup_user.valid?
  end
end
