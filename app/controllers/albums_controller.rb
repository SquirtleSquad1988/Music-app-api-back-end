# frozen_string_literal: true

class AlbumsController < OpenReadController
  before_action :set_album, only: [:show, :update, :destroy]

  # GET /albums
  def index
    @albums = Album.where(user_id: current_user)
    render json: @albums
  end

  # GET /albums/1
  def show
    render json: @album
  end

  # POST /albums
  def create
    @album = current_user.albums.build(album_params)

    if @album.save
      render json: @album, status: :created, location: @album
    else
      render json: @album.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /albums/1
  def update
    if @album.update(album_params)
      head :no_content
    else
      render json: @album.errors, status: :unprocessable_entity
    end
  end

  # DELETE /albums/1
  def destroy
    @album.destroy
    head :no_content
  end

  def set_album
    @album = current_user.albums.find(params[:id])
  end
  private :set_album

  # Only allow a trusted parameter "white list" through.
  def album_params
    params.require(:album).permit(:artist_name, :album_name)
  end
  private :album_params
end
