require 'test_helper'

class UserspecsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userspec = userspecs(:one)
  end

  test "should get index" do
    get userspecs_url
    assert_response :success
  end

  test "should get new" do
    get new_userspec_url
    assert_response :success
  end

  test "should create userspec" do
    assert_difference('Userspec.count') do
      post userspecs_url, params: { userspec: {  } }
    end

    assert_redirected_to userspec_url(Userspec.last)
  end

  test "should show userspec" do
    get userspec_url(@userspec)
    assert_response :success
  end

  test "should get edit" do
    get edit_userspec_url(@userspec)
    assert_response :success
  end

  test "should update userspec" do
    patch userspec_url(@userspec), params: { userspec: {  } }
    assert_redirected_to userspec_url(@userspec)
  end

  test "should destroy userspec" do
    assert_difference('Userspec.count', -1) do
      delete userspec_url(@userspec)
    end

    assert_redirected_to userspecs_url
  end
end
