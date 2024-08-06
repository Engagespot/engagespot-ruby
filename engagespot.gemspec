Gem::Specification.new do |spec|
    spec.name          = "engagespot"
    spec.version       = "1.0.3"
    spec.authors       = ["Anand (coded by ChatGPT)"]
    spec.email         = ["anand@engagespot.co"]
    spec.summary       = "Engagespot REST API client for Ruby"
    spec.description   = "A Ruby library for interacting with the Engagespot REST API."
    spec.homepage      = "https://github.com/engagespot/engagespot-ruby"
    spec.license       = "MIT"
  
    spec.files         = [
      "lib/engagespot.rb"
    ]
  
    spec.require_paths = ["lib"]
  
    spec.add_runtime_dependency "json"
    spec.add_runtime_dependency 'httparty', '~> 0.21.0'
  end
  
