require 'grape-swagger'
require 'category_api'
require 'album_api'
  class API < Grape::API
    prefix "api"
    
    mount BizmassMedia::CategoryAPI
    mount BizmassMedia::AlbumAPI

    before do
      header['Access-Control-Allow-Origin'] = '*'
      header['Access-Control-Request-Method'] = '*'
    end

   

    add_swagger_documentation :markdown => true
    
  end
