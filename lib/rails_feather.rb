require_relative "rails_feather/version"
require_relative "rails_feather/rails_feather"
require_relative "rails_feather/railtie" if defined?(Rails)

module RailsFeather
  ICON_PATH = File.join(File.dirname(__FILE__), "..", "compressed")
end
