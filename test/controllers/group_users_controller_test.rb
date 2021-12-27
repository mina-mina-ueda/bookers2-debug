require 'test_helper'

class GroupUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get group_users_new_url
    assert_response :success
  end

  test "should get edit" do
    get group_users_edit_url
    assert_response :success
  end

  test "should get index" do
    get group_users_index_url
    assert_response :success
  end

end
