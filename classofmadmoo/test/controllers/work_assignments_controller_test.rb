require 'test_helper'

class WorkAssignmentsControllerTest < ActionController::TestCase
  setup do
    @work_assignment = work_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_assignment" do
    assert_difference('WorkAssignment.count') do
      post :create, work_assignment: { body: @work_assignment.body, project_id: @work_assignment.project_id, title: @work_assignment.title, user_id: @work_assignment.user_id }
    end

    assert_redirected_to work_assignment_path(assigns(:work_assignment))
  end

  test "should show work_assignment" do
    get :show, id: @work_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_assignment
    assert_response :success
  end

  test "should update work_assignment" do
    patch :update, id: @work_assignment, work_assignment: { body: @work_assignment.body, project_id: @work_assignment.project_id, title: @work_assignment.title, user_id: @work_assignment.user_id }
    assert_redirected_to work_assignment_path(assigns(:work_assignment))
  end

  test "should destroy work_assignment" do
    assert_difference('WorkAssignment.count', -1) do
      delete :destroy, id: @work_assignment
    end

    assert_redirected_to work_assignments_path
  end
end
