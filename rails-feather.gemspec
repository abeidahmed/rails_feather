require_relative "lib/feather/version"

Gem::Specification.new do |spec|
  spec.name          = "rails-feather"
  spec.version       = Feather::VERSION
  spec.authors       = ["abeidahmed"]
  spec.email         = ["abeidahmed92@gmail.com"]

  spec.summary       = "Ruby on Rails helper method for rendering beautiful feather icons."
  spec.homepage      = "https://github.com/abeidahmed/rails-feather"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.6")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/abeidahmed/rails-feather"
  spec.metadata["changelog_uri"] = "https://github.com/abeidahmed/rails-feather/blob/main/CHANGELOG.md"

  spec.files         = Dir["lib/**/*", "compressed/**/*", "LICENSE.txt", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 0"
end
