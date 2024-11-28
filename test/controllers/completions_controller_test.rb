require "test_helper"

class CompletionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get completions_new_url
    assert_response :success
  end

  test "should get create" do
    get completions_create_url
    assert_response :success
  end
end
