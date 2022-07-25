require "test_helper"

class PaginaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pagina_index_url
    assert_response :success
  end

  test "should get adit" do
    get pagina_adit_url
    assert_response :success
  end

  test "should get show" do
    get pagina_show_url
    assert_response :success
  end
end
