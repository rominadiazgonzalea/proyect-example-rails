require "test_helper"

class SubjectControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subject_index_url
    assert_response :success
  end

  test "should get adit" do
    get subject_adit_url
    assert_response :success
  end
end
