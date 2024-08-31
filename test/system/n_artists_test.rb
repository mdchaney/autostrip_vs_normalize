require "application_system_test_case"

class NArtistsTest < ApplicationSystemTestCase
  setup do
    @n_artist = n_artists(:one)
  end

  test "visiting the index" do
    visit n_artists_url
    assert_selector "h1", text: "N artists"
  end

  test "should create n artist" do
    visit n_artists_url
    click_on "New n artist"

    fill_in "Name", with: @n_artist.name
    click_on "Create N artist"

    assert_text "N artist was successfully created"
    click_on "Back"
  end

  test "should update N artist" do
    visit n_artist_url(@n_artist)
    click_on "Edit this n artist", match: :first

    fill_in "Name", with: @n_artist.name
    click_on "Update N artist"

    assert_text "N artist was successfully updated"
    click_on "Back"
  end

  test "should destroy N artist" do
    visit n_artist_url(@n_artist)
    click_on "Destroy this n artist", match: :first

    assert_text "N artist was successfully destroyed"
  end
end
