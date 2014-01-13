require 'grape-swagger'
require 'category_api'
require 'album_api'
  class API < Grape::API
    prefix "api"  

    before do
      header['Access-Control-Allow-Origin'] = '*'
      header['Access-Control-Request-Method'] = '*'
    end

    mount BizmassMedia::CategoryAPI
    mount BizmassMedia::AlbumAPI

    add_swagger_documentation :markdown => true
    
  end
