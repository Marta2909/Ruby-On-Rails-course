require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get posts_new_url
    assert_response :success
    assert_not_nil assigns(:post)
  end

  test "should create a post" do
    #posts_before = Post.count
    assert_difference -> {Post.count},1 do
      post :create, post: {author: "Autor", body: "Wpis"}
    end
    #posts_after = Post.count
    #assert_equal 1, posts_after - posts_before
    assert_redirected_to posts_path
  end

end
