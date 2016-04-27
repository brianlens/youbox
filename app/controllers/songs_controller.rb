class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    @songs = Song.new
    if @song.save
      redirect_to artist_path
    else
      redirect_to root_path
  end

  def update
    @song = Song.find(params[:id])
  end

  def destroy
    @song = Song.find(params[:id])
  end

  protected

  def artist_params
    params.require(:song).permit(:title, :album, :cover, :year, :ylink)
  end
end
