require 'test_helper'

class ParentsControllerTest < ActionController::TestCase
  setup do
    @parent = parents(:one)
    teacher = Teacher.create(email:"turner")
    teacher.password = "davis"
    teacher.save
    Parent.create!(teacher_id: teacher.id, name: "Mrs. McGillicuddy")
    Parent.create!(teacher_id: teachers(:one).id, name: "Mrs. Potatohead")
    session[:user_id] = teacher.id
  end

  test "should get index" do
    get :index
    assert_response :success
    assert response.body =~ /McGillicuddy/
    refute response.body =~ /Potatohead/
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parent" do
    assert_difference('Parent.count') do
      post :create, parent: { email: @parent.email, name: @parent.name }
    end

    assert_redirected_to parent_path(assigns(:parent))
  end

  test "should show parent" do
    get :show, id: @parent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parent
    assert_response :success
  end

  test "should update parent" do
    patch :update, id: @parent, parent: { email: @parent.email, name: @parent.name }
    assert_redirected_to parent_path(assigns(:parent))
  end

  test "should destroy parent" do
    assert_difference('Parent.count', -1) do
      delete :destroy, id: @parent
    end

    assert_redirected_to parents_path
  end
end
