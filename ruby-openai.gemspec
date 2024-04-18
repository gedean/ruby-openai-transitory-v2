require_relative "lib/openai/version"

Gem::Specification.new do |spec|
  spec.name          = "ruby-openai-transitory-v2"
  spec.version       = OpenAI::VERSION
  spec.authors       = ["Alex"]
  spec.email         = ["alexrudall@users.noreply.github.com"]

  spec.summary       = "While alexrudall/ruby-openai is in v1, this gem is a temporary fork that will be removed once the original gem is updated."
  spec.homepage      = "https://github.com/gedean/ruby-openai-transitory-v2"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/gedean/ruby-openai-transitory-v2"
  spec.metadata["rubygems_mfa_required"] = "true"
  spec.metadata["funding_uri"] = "https://github.com/sponsors/alexrudall"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "event_stream_parser", ">= 0.3.0", "< 2.0.0"
  spec.add_dependency "faraday", ">= 1"
  spec.add_dependency "faraday-multipart", ">= 1"
end
