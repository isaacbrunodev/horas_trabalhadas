require "application_system_test_case"

class SummaryReportsTest < ApplicationSystemTestCase
  setup do
    @summary_report = summary_reports(:one)
  end

  test "visiting the index" do
    visit summary_reports_url
    assert_selector "h1", text: "Summary reports"
  end

  test "should create summary report" do
    visit summary_reports_url
    click_on "New summary report"

    fill_in "Project", with: @summary_report.project_id
    fill_in "Task type", with: @summary_report.task_type_id
    fill_in "User", with: @summary_report.user_id
    click_on "Create Summary report"

    assert_text "Summary report was successfully created"
    click_on "Back"
  end

  test "should update Summary report" do
    visit summary_report_url(@summary_report)
    click_on "Edit this summary report", match: :first

    fill_in "Project", with: @summary_report.project_id
    fill_in "Task type", with: @summary_report.task_type_id
    fill_in "User", with: @summary_report.user_id
    click_on "Update Summary report"

    assert_text "Summary report was successfully updated"
    click_on "Back"
  end

  test "should destroy Summary report" do
    visit summary_report_url(@summary_report)
    click_on "Destroy this summary report", match: :first

    assert_text "Summary report was successfully destroyed"
  end
end
