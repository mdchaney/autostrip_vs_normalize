class NArtistsController < ApplicationController
  before_action :set_n_artist, only: %i[ show edit update destroy ]

  # GET /n_artists or /n_artists.json
  def index
    @n_artists = NArtist.all
  end

  # GET /n_artists/1 or /n_artists/1.json
  def show
  end

  # GET /n_artists/new
  def new
    @n_artist = NArtist.new
  end

  # GET /n_artists/1/edit
  def edit
  end

  # POST /n_artists or /n_artists.json
  def create
    @n_artist = NArtist.new(n_artist_params)

    respond_to do |format|
      if @n_artist.save
        format.html { redirect_to n_artist_url(@n_artist), notice: "N artist was successfully created." }
        format.json { render :show, status: :created, location: @n_artist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @n_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /n_artists/1 or /n_artists/1.json
  def update
    respond_to do |format|
      if @n_artist.update(n_artist_params)
        format.html { redirect_to n_artist_url(@n_artist), notice: "N artist was successfully updated." }
        format.json { render :show, status: :ok, location: @n_artist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @n_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /n_artists/1 or /n_artists/1.json
  def destroy
    @n_artist.destroy!

    respond_to do |format|
      format.html { redirect_to n_artists_url, notice: "N artist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_n_artist
      @n_artist = NArtist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def n_artist_params
      params.require(:n_artist).permit(:name)
    end
end
