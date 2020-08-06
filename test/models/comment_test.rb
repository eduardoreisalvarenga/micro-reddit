require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    user = User.create(user_name: 'Edwardo', email: 'edwardo@example.com')
    post = user.posts.create(title: 'Thor God of thunder', body: 'x' * 200)    
    @comment = post.comments.create(comment: 'A comment goes here', user_id: user.id)
  end

  test 'comment should be valid' do
    assert @comment.valid?
  end

  test 'comment should have user id' do 
    @comment.user_id = nil
    assert_not @comment.valid?
  end

  test 'comment should be present' do
    @comment.comment = nil
    assert_not @comment.valid?
  end

  test 'comment should be at least 5 characters ' do
    @comment.comment = "xxxx"
    assert_not @comment.valid?
  end

  test 'comment should be at maximum 300 characters' do
    @comment.comment = "x" * 301
    assert_not @comment.valid?
  end

  test 'should be attached to a post' do
    @comment.post_id = nil
    assert_not @comment.valid?
  end
end
