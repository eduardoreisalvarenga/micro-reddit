require 'test_helper'

class PostTest < ActiveSupport::TestCase

  def setup
    user = User.create(user_name: 'moses', email: 'moses@example.com')
    @post = user.posts.build(title: 'Thor God of thunder', body: 'x' * 200)
  end

  test 'post should be valid' do
    assert @post.valid?
  end

  test 'post title should be present' do
    @post.title = ''
    assert_not @post.valid?
  end

  test 'post title should have a minimum length of 10 characters' do
    @post.title = 'x' * 9
    assert_not @post.valid?
  end

  test 'post title should have a maximum length of 50 characters' do
    @post.title = 'x' * 51
    assert_not @post.valid?
  end

  test 'post body should be present' do
    @post.body = ''
    assert_not @post.valid?
  end

  test 'post body should have a minimum of 30 characters' do
    @post.body = 'x' * 29
    assert_not @post.valid?
  end

  test 'post body should have a maximum of 300 characters' do
    @post.body = 'x' * 301
    assert_not @post.valid?
  end

  test 'post shoud have the user id' do
    @post.user_id = nil
    assert_not @post.valid?
  end

end
