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

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rails", "~> 5.0"
end
