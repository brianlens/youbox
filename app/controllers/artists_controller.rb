class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.new
    @song = @artist.songs.create(song_params)
    if @artist.save
      render artist_path
    else
      redirect_to root_path
    end
  end

  def update
    @artist = Artist.find(params[:id])
  end

  def new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def destroy
    @artist = Artist.find(params[:id])
  end

  protected

  def artist_params
    params.require(:artist).permit(:name, :country)
  end
end
