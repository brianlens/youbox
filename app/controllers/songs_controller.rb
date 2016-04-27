class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.create(song_params)
    redirect_to artist_path(@artist)
  end

  def update
    @song = Song.find(params[:id])
  end

  def destroy
    @song = Song.find(params[:id])
  end

  protected

  def song_params
    params.require(:song).permit(:title, :album, :cover, :year, :ylink)
  end
end
