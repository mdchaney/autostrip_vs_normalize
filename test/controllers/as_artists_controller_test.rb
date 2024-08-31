require "test_helper"

class AsArtistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @as_artist = as_artists(:one)
  end

  test "should get index" do
    get as_artists_url
    assert_response :success
  end

  test "should get new" do
    get new_as_artist_url
    assert_response :success
  end

  test "should create as_artist" do
    assert_difference("AsArtist.count") do
      post as_artists_url, params: { as_artist: { name: @as_artist.name } }
    end

    assert_redirected_to as_artist_url(AsArtist.last)
  end

  test "should show as_artist" do
    get as_artist_url(@as_artist)
    assert_response :success
  end

  test "should get edit" do
    get edit_as_artist_url(@as_artist)
    assert_response :success
  end

  test "should update as_artist" do
    patch as_artist_url(@as_artist), params: { as_artist: { name: @as_artist.name } }
    assert_redirected_to as_artist_url(@as_artist)
  end

  test "should destroy as_artist" do
    assert_difference("AsArtist.count", -1) do
      delete as_artist_url(@as_artist)
    end

    assert_redirected_to as_artists_url
  end
end
