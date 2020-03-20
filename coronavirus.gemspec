require_relative 'lib/coronavirus/version'

Gem::Specification.new do |spec|
  spec.name          = "coronavirus"
  spec.version       = Coronavirus::VERSION
  spec.authors       = ["Shaun Carland"]
  spec.email         = ["shauncarland@gmail.com"]

  spec.summary       = %q{sssssss: Wrisssssste a short summary, because RubyGems requires one.}
  spec.description   = %q{sssssss: Wrisssssste a longer description or delete this line.}
  spec.homepage      = "http://shauncar.land/projects/coronavirus_adapter"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://github.com/shaunlawrencecarland/coronavirus"
  spec.metadata["changelog_uri"] = "http://google.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
