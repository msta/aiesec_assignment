require 'test_helper'

# All the presets are done via .yml files

class UserControllerTest < ActionController::TestCase
  #
  # test "should get the user subscribed in a topic" do
  #   post(:subscribe, {'id' => 1, 'topic' => 'hi'}, :format => "json")
  #   assert_response :success
  #
  #   body = JSON.parse(response.body)
  #   #subscribed
  #   assert_equal 1, body["status"]
  # end
  #
  # test "should get user unsubscribed in a topic" do
  #   post(:unsubscribe, {'id' => 2, 'topic' => 'Animals'}, :format => "json")
  #   assert_response :success
  #
  #   body = JSON.parse(response.body)
  #   assert_equal 1, body["status"]
  # end

  # test "should persist a user post and return success status" do
  #   post(:post, {'id' => 1, 'post' => {title: 'title1',topic: 'topic1', text: 'text1'}}, :format => "json")
  #   assert_response :success
  #
  #   body = JSON.parse(response.body)
  #   assert_equal 1, body["status"]
  # end

  test "should get the user notes" do
    get(:notes, {'id' => 3}, :format => "json")
    assert_response :success

    body = JSON.parse(response.body)

    assert_equal 1, body[0]["id"] # note from post 1
    assert_equal 2, body[1]["id"] # note from post 2
    assert_equal 2, body.size     # 2 valid notes
  end

end
