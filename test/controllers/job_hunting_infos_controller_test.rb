require "test_helper"

class JobHuntingInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_hunting_info = job_hunting_infos(:one)
  end

  test "should get index" do
    get job_hunting_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_job_hunting_info_url
    assert_response :success
  end

  test "should create job_hunting_info" do
    assert_difference("JobHuntingInfo.count") do
      post job_hunting_infos_url, params: { job_hunting_info: { extracurricular_activities: @job_hunting_info.extracurricular_activities, motivation: @job_hunting_info.motivation, self_pr: @job_hunting_info.self_pr, user_id: @job_hunting_info.user_id } }
    end

    assert_redirected_to job_hunting_info_url(JobHuntingInfo.last)
  end

  test "should show job_hunting_info" do
    get job_hunting_info_url(@job_hunting_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_hunting_info_url(@job_hunting_info)
    assert_response :success
  end

  test "should update job_hunting_info" do
    patch job_hunting_info_url(@job_hunting_info), params: { job_hunting_info: { extracurricular_activities: @job_hunting_info.extracurricular_activities, motivation: @job_hunting_info.motivation, self_pr: @job_hunting_info.self_pr, user_id: @job_hunting_info.user_id } }
    assert_redirected_to job_hunting_info_url(@job_hunting_info)
  end

  test "should destroy job_hunting_info" do
    assert_difference("JobHuntingInfo.count", -1) do
      delete job_hunting_info_url(@job_hunting_info)
    end

    assert_redirected_to job_hunting_infos_url
  end
end
