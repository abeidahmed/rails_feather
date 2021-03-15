module Feather
  class Feather
    attr_reader :options

    def initialize(icon, size: 24, stroke_width: 2, **options)
      @icon = icon.to_s
      @options = options

      @options.merge!(a11y)
      @options.merge!({
        fill: "none",
        stroke: "currentColor",
        viewBox: "0 0 24 24",
        version: 1.1,
        width: size,
        height: size,
        "stroke-width": stroke_width,
        "stroke-linecap": "round",
        "stroke-linejoin": "round"
      })
    end

    private

    def a11y
      accessible = {}

      if @options[:"aria-label"].nil? && @options["aria-label"].nil? && @options.dig(:aria, :label).nil?
        accessible[:"aria-hidden"] = "true"
      else
        accessible[:role] = "img"
      end

      accessible
    end
  end
end
