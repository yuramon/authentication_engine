require_relative "lib/authentication/version"

Gem::Specification.new do |spec|
  spec.name        = "authentication"
  spec.version     = Authentication::VERSION
  spec.authors     = ["yuramon"]
  spec.email       = ["yuramon2405@gmail.com"]
  spec.homepage    = "https://example.com"
  spec.summary     = "Authentication flow"
  spec.description = "Add Authentication to rails application"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.3"
end
