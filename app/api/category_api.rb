# encoding: UTF-8
require "entities"
require "helpers"
module BizmassMedia
  class CategoryAPI < Grape::API
    format :json
    helpers APIHelpers

    namespace 'categories' do
          desc "获取某个分类下图集列表"
          params do
            requires :id, type: Integer, desc: "Category id."
          end
          route_param :id do
            get "/albums" do
               category = Category.find params[:id]

               albums = category.albums
               albums = Album.where("1=1") if category.whole
               if params[:page].present?
                 albums = category.albums.page(params[:page]).per_page(page_size)
                 page_count = albums.length
               end
               
               meta = OpenStruct.new :count=>albums.count,:page_count=> page_count||albums.count
               present :data, albums, with: BizmassMedia::APIEntities::Album
               present :meta, meta, with: BizmassMedia::APIEntities::Meta
            end
          end

          desc "获取所有分类"
          get do
             categories = Category.all
             meta = OpenStruct.new :count=>categories.count
             present :data, categories, with: BizmassMedia::APIEntities::Category
             present :meta, meta, with: BizmassMedia::APIEntities::Meta

          end
    end
  end
end











