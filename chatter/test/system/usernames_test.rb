require "application_system_test_case"

class UsernamesTest < ApplicationSystemTestCase
  setup do
    @username = usernames(:one)
  end

  test "visiting the index" do
    visit usernames_url
    assert_selector "h1", text: "Usernames"
  end

  test "creating a Username" do
    visit usernames_url
    click_on "New Username"

    fill_in "Body", with: @username.body
    fill_in "Likes count", with: @username.likes_count
    fill_in "Reposts count", with: @username.reposts_count
    click_on "Create Username"

    assert_text "Username was successfully created"
    click_on "Back"
  end

  test "updating a Username" do
    visit usernames_url
    click_on "Edit", match: :first

    fill_in "Body", with: @username.body
    fill_in "Likes count", with: @username.likes_count
    fill_in "Reposts count", with: @username.reposts_count
    click_on "Update Username"

    assert_text "Username was successfully updated"
    click_on "Back"
  end

  test "destroying a Username" do
    visit usernames_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Username was successfully destroyed"
  end
end
