require "test_helper"

class TreatmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get treatments_index_url
    assert_response :success
  end
end
