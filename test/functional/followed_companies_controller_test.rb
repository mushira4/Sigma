require 'test_helper'

class FollowedCompaniesControllerTest < ActionController::TestCase
  setup do
    @followed_company = followed_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:followed_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create followed_company" do
    assert_difference('FollowedCompany.count') do
      post :create, followed_company: {  }
    end

    assert_redirected_to followed_company_path(assigns(:followed_company))
  end

  test "should show followed_company" do
    get :show, id: @followed_company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @followed_company
    assert_response :success
  end

  test "should update followed_company" do
    put :update, id: @followed_company, followed_company: {  }
    assert_redirected_to followed_company_path(assigns(:followed_company))
  end

  test "should destroy followed_company" do
    assert_difference('FollowedCompany.count', -1) do
      delete :destroy, id: @followed_company
    end

    assert_redirected_to followed_companies_path
  end
end
