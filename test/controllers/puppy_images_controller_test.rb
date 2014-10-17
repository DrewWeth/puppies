require 'test_helper'

class PuppyImagesControllerTest < ActionController::TestCase
  setup do
    @puppy_image = puppy_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:puppy_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create puppy_image" do
    assert_difference('PuppyImage.count') do
      post :create, puppy_image: { desc: @puppy_image.desc, puppy_id: @puppy_image.puppy_id }
    end

    assert_redirected_to puppy_image_path(assigns(:puppy_image))
  end

  test "should show puppy_image" do
    get :show, id: @puppy_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @puppy_image
    assert_response :success
  end

  test "should update puppy_image" do
    patch :update, id: @puppy_image, puppy_image: { desc: @puppy_image.desc, puppy_id: @puppy_image.puppy_id }
    assert_redirected_to puppy_image_path(assigns(:puppy_image))
  end

  test "should destroy puppy_image" do
    assert_difference('PuppyImage.count', -1) do
      delete :destroy, id: @puppy_image
    end

    assert_redirected_to puppy_images_path
  end
end
