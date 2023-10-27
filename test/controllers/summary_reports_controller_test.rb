require "test_helper"

class SummaryReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @summary_report = summary_reports(:one)
  end

  test "should get index" do
    get summary_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_summary_report_url
    assert_response :success
  end

  test "should create summary_report" do
    assert_difference("SummaryReport.count") do
      post summary_reports_url, params: { summary_report: { project_id: @summary_report.project_id, task_type_id: @summary_report.task_type_id, user_id: @summary_report.user_id } }
    end

    assert_redirected_to summary_report_url(SummaryReport.last)
  end

  test "should show summary_report" do
    get summary_report_url(@summary_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_summary_report_url(@summary_report)
    assert_response :success
  end

  test "should update summary_report" do
    patch summary_report_url(@summary_report), params: { summary_report: { project_id: @summary_report.project_id, task_type_id: @summary_report.task_type_id, user_id: @summary_report.user_id } }
    assert_redirected_to summary_report_url(@summary_report)
  end

  test "should destroy summary_report" do
    assert_difference("SummaryReport.count", -1) do
      delete summary_report_url(@summary_report)
    end

    assert_redirected_to summary_reports_url
  end
end
