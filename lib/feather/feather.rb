module Feather
  class Feather
    attr_reader :options

    def initialize(icon, **options)
      @icon = icon.to_s
      @options = options

      @options.merge!(a11y)
      @options.merge!({
        fill: "none",
        stroke: "currentColor"
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
