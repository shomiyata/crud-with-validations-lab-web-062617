class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = specific_song
  end

  def create
    @song = Song.new(songs_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def edit
    @song = specific_song
  end

  def update
    @song = specific_song
    if @song.update(songs_params)
      redirect_to @song
    else
      render :edit
    end
  end

  def destroy
    @song = specific_song
    @song.destroy
    redirect_to songs_path
  end

  def new
    @song = Song.new
  end

  private

  def specific_song
    Song.find(params[:id])
  end

  def songs_params
    params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
  end
end
