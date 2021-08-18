require 'test_helper'

class SubCatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_cat = sub_cats(:one)
  end

  test "should get index" do
    get sub_cats_url, as: :json
    assert_response :success
  end

  test "should create sub_cat" do
    assert_difference('SubCat.count') do
      post sub_cats_url, params: { sub_cat: { cat_id: @sub_cat.cat_id, disc: @sub_cat.disc, name: @sub_cat.name } }, as: :json
    end

    assert_response 201
  end

  test "should show sub_cat" do
    get sub_cat_url(@sub_cat), as: :json
    assert_response :success
  end

  test "should update sub_cat" do
    patch sub_cat_url(@sub_cat), params: { sub_cat: { cat_id: @sub_cat.cat_id, disc: @sub_cat.disc, name: @sub_cat.name } }, as: :json
    assert_response 200
  end

  test "should destroy sub_cat" do
    assert_difference('SubCat.count', -1) do
      delete sub_cat_url(@sub_cat), as: :json
    end

    assert_response 204
  end
end
