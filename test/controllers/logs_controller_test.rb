require "test_helper"

class LogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @log = logs(:one)
  end

  test "should get index" do
    get logs_url, as: :json
    assert_response :success
  end

  test "should create log" do
    assert_difference("Log.count") do
      post logs_url, params: { log: { is_error: @log.is_error, machine_id: @log.machine_id, message: @log.message } }, as: :json
    end

    assert_response :created
  end

  test "should show log" do
    get log_url(@log), as: :json
    assert_response :success
  end

  test "should update log" do
    patch log_url(@log), params: { log: { is_error: @log.is_error, machine_id: @log.machine_id, message: @log.message } }, as: :json
    assert_response :success
  end

  test "should destroy log" do
    assert_difference("Log.count", -1) do
      delete log_url(@log), as: :json
    end

    assert_response :no_content
  end
end
