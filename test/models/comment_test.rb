require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(user_name: 'Eduardo', comment: 'A comment goes here')
  end

  test 'should be balid' do
    assert @comment.valid?
  end

  test 'should have user_name' do 
    @comment.user_name = nil
    assert_not @comment.valid?
  end

  test 'comment should be present' do
    @comment.comment = nil
    assert_not @comment.valid?
  end

  test 'comment should be at least 5 characteres ' do
    @comment.comment = "x"
    assert_not @comment.valid?
  end

  test 'comment should be at maximum 300 characteres' do
    @comment.comment = "x" * 301
    assert_not @comment.valid?
  end

  test 'should be attached to a post' do

  end
end
