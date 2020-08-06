require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    user = User.create(user_name: 'Edwardo', email: 'edwardo@example.com')
    post = user.posts.create(title: 'Thor God of thunder', body: 'x' * 200)    
    @comment = post.comments.build(user_name: user.user_name, comment: 'A comment goes here')
  end

  test 'should be balid' do
    assert @comment.valid?
  end

  test 'should have user name' do 
    @comment.user_name = nil
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
