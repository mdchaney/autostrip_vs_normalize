class AsArtistsController < ApplicationController
  before_action :set_as_artist, only: %i[ show edit update destroy ]

  # GET /as_artists or /as_artists.json
  def index
    @as_artists = AsArtist.all
  end

  # GET /as_artists/1 or /as_artists/1.json
  def show
  end

  # GET /as_artists/new
  def new
    @as_artist = AsArtist.new
  end

  # GET /as_artists/1/edit
  def edit
  end

  # POST /as_artists or /as_artists.json
  def create
    @as_artist = AsArtist.new(as_artist_params)

    respond_to do |format|
      if @as_artist.save
        format.html { redirect_to as_artist_url(@as_artist), notice: "As artist was successfully created." }
        format.json { render :show, status: :created, location: @as_artist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @as_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /as_artists/1 or /as_artists/1.json
  def update
    respond_to do |format|
      if @as_artist.update(as_artist_params)
        format.html { redirect_to as_artist_url(@as_artist), notice: "As artist was successfully updated." }
        format.json { render :show, status: :ok, location: @as_artist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @as_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /as_artists/1 or /as_artists/1.json
  def destroy
    @as_artist.destroy!

    respond_to do |format|
      format.html { redirect_to as_artists_url, notice: "As artist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_as_artist
      @as_artist = AsArtist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def as_artist_params
      params.require(:as_artist).permit(:name)
    end
end
