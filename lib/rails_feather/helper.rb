require "action_view"

module RailsFeather
  module Helper
    # To add a feather_icon, call <tt><%= feather_icon "activity" %></tt> on your erb template.
    # Head over to https://feathericons.com to view all the icons.
    #
    # == Options
    # The helper method accepts mutiple arguments such as:
    #
    # === Handling the icon size
    # Specify a <tt>size</tt> param in the helper method to set the <tt>height</tt> and <tt>width</tt>
    # on the <tt>svg</tt> icon.
    #
    # <tt><%= feather_icon "activity", size: 20 %></tt>
    #
    # <tt>size</tt> defaults to 24 if not defined.
    #
    # === Handling the stroke width
    #
    # Specify a <tt>stroke_width</tt> param in the helper method to set the <tt>stroke-width</tt>
    # on the <tt>svg</tt> icon.
    #
    # <tt><%= feather_icon "activity", stroke_width: 1 %></tt>
    #
    # <tt>stroke_width</tt> defaults to 2 if not defined.
    #
    # === HTML attributes
    # Any <tt>html</tt> and <tt>eruby</tt> attribute syntax is supported, for eg:
    #
    # <tt><%= feather_icon "activity", class: "custom-class", aria: { label: "User activity" } %></tt>
    #
    # == Accessibility
    # The helper method automatically sets <tt>aria-hidden="true"</tt> if <tt>aria-label</tt> is not set, and
    # if <tt>aria-label</tt> is set, then <tt>role="img"</tt> is set on the svg.
    def feather_icon(icon_name, **options)
      icon = RailsFeather.new(icon_name, **options)
      content_tag(:svg, icon.svg_path.html_safe, icon.options)
    end
  end
end
