# encoding: utf-8
class Support::AlbumsController < ApplicationController
  # GET /albums
  # GET /albums.json
  before_filter :authenticate_user!
  
  def index
    @albums = Album.page params[:page]

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    @album = Album.find(params[:id])
    @materials_arr = @album.materials.in_groups_of(3)
    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /albums/new
  # GET /albums/new.json
  def new
    @album = Album.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /albums/1/edit
  def edit
    @album = Album.find(params[:id])
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.new(params[:album])

    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: '图集创建成功.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /albums/1
  # PUT /albums/1.json
  def update
    @album = Album.find(params[:id])

    respond_to do |format|
      if @album.update_attributes(params[:album])
        format.html { redirect_to @album, notice: '图集更新成功.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @album = Album.find(params[:id])
    @album.destroy

    respond_to do |format|
      format.html { redirect_to albums_url }
    end
  end
end
