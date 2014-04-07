# encoding: UTF-8
require "entities"
require "helpers"
module BizmassMedia
  class AlbumAPI < Grape::API
    format :json
    helpers APIHelpers


    namespace 'albums' do

      desc "获取某个图集下所有素材"
      params do
        requires :id, type: Integer, desc: "albums id."
      end
      route_param :id do
        get "/materials" do
           ablum = Album.find(params[:id])
           materials = ablum.materials
           meta = OpenStruct.new :count=>materials.count
           present :data,materials, with: BizmassMedia::APIEntities::Material 
           present :meta, meta, with: BizmassMedia::APIEntities::Meta
        end
      end

      desc "获取推荐的图集"
      get "/recommend" do
        albums = Album.where(:recommend=>true)
        meta = OpenStruct.new :count=>albums.count
        present :data,albums, with: BizmassMedia::APIEntities::Album
        present :meta, meta, with: BizmassMedia::APIEntities::Meta

      end



    end     
  end
end











