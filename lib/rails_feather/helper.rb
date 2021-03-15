require "action_view"

module RailsFeather
  module Helper
    def feather_icon(icon_name, **options)
      icon = RailsFeather.new(icon_name, **options)
      content_tag(:svg, icon.svg_path.html_safe, icon.options)
    end
  end
end
