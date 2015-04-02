class MusicsController < ApplicationController
  before_action :set_music, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @musics = Music.all
    respond_with(@musics)
  end

  def show
    respond_with(@music)
  end

  def new
    @music = Music.new
    respond_with(@music)
  end

  def edit
  end

  def create
    @music = Music.new(music_params)
    @music.save
    respond_with(@music)
  end

  def update
    @music.update(music_params)
    respond_with(@music)
  end

  def destroy
    @music.destroy
    respond_with(@music)
  end

  private
    def set_music
      @music = Music.find(params[:id])
    end

    def music_params
      params.require(:music).permit(:song, :artist)
    end
end
