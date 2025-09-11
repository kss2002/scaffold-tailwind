require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "게시글"
  end

  test "should create post" do
    visit posts_url
    click_on "새 게시글"

    fill_in "Content", with: @post.content
    fill_in "Title", with: @post.title
    click_on "새 게시글"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "should update Post" do
    visit post_url(@post)
    click_on "Edit this post", match: :first

    fill_in "Content", with: @post.content
    fill_in "Title", with: @post.title
    click_on "포스트 업데이트"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "should destroy Post" do
    visit post_url(@post)
    accept_confirm { click_on "포스트 삭제", match: :first }

    assert_text "Post was successfully destroyed"
  end
end