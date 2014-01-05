class ApplicationController < ActionController::Base
   layout :layout_by_resource
   protected
    def layout_by_resource
      return "welcome" if controller_name=="sessions"
      #return "blank" if action_name.end_with?("_ajax")
      #return "blank" if controller_name=="nodes" && ["new","edit"].include?(action_name)
      #return "page" if ["index"].include? controller_name
      "application"
    end

  protect_from_forgery
end
