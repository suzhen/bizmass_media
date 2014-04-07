BizmassMedia::Application.routes.draw do
  
  devise_for :users

  root :to => "support/categories#index"

  scope '/support' do
    resources :categories,module:'support'
    resources :albums,module:'support'
    resources :materials,module:'support'
    get "recommend_albums" => "support/albums#recommend"
  end
 
  mount API => '/'
  
  #if Rails.env.staging? || Rails.env.development?
    mount GrapeSwaggerRails::Engine, at: '/swagger'
  #end 
  
end
