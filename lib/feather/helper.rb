require "action_view"

module Feather
  module Helper
    def feather_icon(icon_name, **options)
      icon = Feather.new(icon_name, **options)
      content_tag(:svg, icon.svg_path.html_safe, icon.options)
    end
  end
end
