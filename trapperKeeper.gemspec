# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "trapperKeeper"
  spec.version       = '0.0.1'
  spec.authors       = ["Jessica-Koch"]
  spec.email         = ["jessicakoch136@icloud.com"]

  spec.summary       = 'TrapperKeeper API Client'
  spec.description   = 'A client to interact with Bloc\'s  API'
  spec.homepage      = "http://rubygems.org/gems/trapperKeeper"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = ['lib/kele.rb']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency 'httparty', '~> 0.13'
  spec.add_runtime_dependency 'json', '~> 1.8.3'
end
