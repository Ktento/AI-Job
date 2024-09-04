require "application_system_test_case"

class JobHuntingInfosTest < ApplicationSystemTestCase
  setup do
    @job_hunting_info = job_hunting_infos(:one)
  end

  test "visiting the index" do
    visit job_hunting_infos_url
    assert_selector "h1", text: "Job hunting infos"
  end

  test "should create job hunting info" do
    visit job_hunting_infos_url
    click_on "New job hunting info"

    fill_in "Extracurricular activities", with: @job_hunting_info.extracurricular_activities
    fill_in "Motivation", with: @job_hunting_info.motivation
    fill_in "Self pr", with: @job_hunting_info.self_pr
    fill_in "User", with: @job_hunting_info.user_id
    click_on "Create Job hunting info"

    assert_text "Job hunting info was successfully created"
    click_on "Back"
  end

  test "should update Job hunting info" do
    visit job_hunting_info_url(@job_hunting_info)
    click_on "Edit this job hunting info", match: :first

    fill_in "Extracurricular activities", with: @job_hunting_info.extracurricular_activities
    fill_in "Motivation", with: @job_hunting_info.motivation
    fill_in "Self pr", with: @job_hunting_info.self_pr
    fill_in "User", with: @job_hunting_info.user_id
    click_on "Update Job hunting info"

    assert_text "Job hunting info was successfully updated"
    click_on "Back"
  end

  test "should destroy Job hunting info" do
    visit job_hunting_info_url(@job_hunting_info)
    click_on "Destroy this job hunting info", match: :first

    assert_text "Job hunting info was successfully destroyed"
  end
end
