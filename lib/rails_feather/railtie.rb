require_relative "helper"

module RailsFeather
  class Railtie < Rails::Railtie
    initializer "feather_icon.helper" do
      ActionView::Base.send :include, Helper # rubocop:disable Lint/SendWithMixinArgument
    end
  end
end
