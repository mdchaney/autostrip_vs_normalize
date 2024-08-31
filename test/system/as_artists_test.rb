require "application_system_test_case"

class AsArtistsTest < ApplicationSystemTestCase
  setup do
    @as_artist = as_artists(:one)
  end

  test "visiting the index" do
    visit as_artists_url
    assert_selector "h1", text: "As artists"
  end

  test "should create as artist" do
    visit as_artists_url
    click_on "New as artist"

    fill_in "Name", with: @as_artist.name
    click_on "Create As artist"

    assert_text "As artist was successfully created"
    click_on "Back"
  end

  test "should update As artist" do
    visit as_artist_url(@as_artist)
    click_on "Edit this as artist", match: :first

    fill_in "Name", with: @as_artist.name
    click_on "Update As artist"

    assert_text "As artist was successfully updated"
    click_on "Back"
  end

  test "should destroy As artist" do
    visit as_artist_url(@as_artist)
    click_on "Destroy this as artist", match: :first

    assert_text "As artist was successfully destroyed"
  end
end
