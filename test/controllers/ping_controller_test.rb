# require 'test_helper'

class PingControllerTest < ActionDispatch::IntegrationTest
  test "get index: is successful" do
    get '/api/v1/ping?name=Andres&time=0'
    assert_response :success
  end
end
