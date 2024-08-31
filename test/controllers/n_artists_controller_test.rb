require "test_helper"

class NArtistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @n_artist = n_artists(:one)
  end

  test "should get index" do
    get n_artists_url
    assert_response :success
  end

  test "should get new" do
    get new_n_artist_url
    assert_response :success
  end

  test "should create n_artist" do
    assert_difference("NArtist.count") do
      post n_artists_url, params: { n_artist: { name: @n_artist.name } }
    end

    assert_redirected_to n_artist_url(NArtist.last)
  end

  test "should show n_artist" do
    get n_artist_url(@n_artist)
    assert_response :success
  end

  test "should get edit" do
    get edit_n_artist_url(@n_artist)
    assert_response :success
  end

  test "should update n_artist" do
    patch n_artist_url(@n_artist), params: { n_artist: { name: @n_artist.name } }
    assert_redirected_to n_artist_url(@n_artist)
  end

  test "should destroy n_artist" do
    assert_difference("NArtist.count", -1) do
      delete n_artist_url(@n_artist)
    end

    assert_redirected_to n_artists_url
  end
end
