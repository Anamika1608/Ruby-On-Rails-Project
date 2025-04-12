require "test_helper"

class GalleryControllerTest < ActionDispatch::IntegrationTest
  test "should get mine" do
    get gallery_mine_url
    assert_response :success
  end
end
