require_relative "feather/version"
require_relative "feather/feather"
require_relative "feather/railtie" if defined?(Rails)

module Feather
  ICON_PATH = File.join(File.dirname(__FILE__), "..", "compressed")
end
