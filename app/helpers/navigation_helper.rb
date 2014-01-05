module NavigationHelper
      
  # To easily render menu items
  # Usage: render_menu_items 'drivers', 'passengers', 'schedules'
  def render_menu_items(*items)
    content_tag :ul, class: "nav navbar-nav" do
      items.collect{ |item| nav_link item }.join("").html_safe
    end
  end
      
  def nav_link(controller_name)
    content_tag :li, class: controller?(controller_name[1..-1]) ? 'active' : nil do
      link_to "#{I18n.t controller_name, :scope => :navigation}", "#{controller_name}"
    end
  end
  
  def submenu_link(name, path)
    #content_tag :li, class: is_submenu_active?(path) do
      link_to name, path,:class=>is_submenu_active?(path)
    #end
  end
    
  # For filters in admin pages
  def filter_links(*filters)
    content_tag :ul, class: "nav nav-pills" do
      filters.collect{ |item| filter_link item }.join("").html_safe
    end
  end
    
  def filter_link(name)
    path = url_for(params.merge({filter: name}))
    content_tag :li, class: is_active?(path) do 
      link_to name.humanize, path     
    end
  end
  

  # Returns active for specific current page
  def is_submenu_active?(path)
    current_page?(path) ? 'list-group-item active' : 'list-group-item'
  end
end
                           
