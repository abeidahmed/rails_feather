require "json"

require_relative "rails_feather/version"
require_relative "rails_feather/rails_feather"
require_relative "rails_feather/railtie" if defined?(Rails)

module RailsFeather
  ICONS_PATH = File.join(File.dirname(__FILE__), "..", "compressed", "icons.json")
  ICONS_HASH = JSON.load_file(ICONS_PATH)
end
