Gem::Specification.new do |s|
  s.name        = 'initialize_with'
  s.version     = '0.0.1'
  s.summary     = 'DSL for shorter shorter arguments initialization'
  s.description = 'DSL for shorter shorter arguments initialization'
  s.author      = ['Michael Lutsiuk']
  s.email       = 'mmaccoffe@gmail.com'
  s.license     = 'MIT'
  s.homepage    = 'https://github.com/mediaslave24/initialize_with'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files test/*`.split("\n")

  s.required_ruby_version = '>= 1.9.3'

  s.add_development_dependency 'rake', '~> 10.2'
  s.add_development_dependency 'minitest', '~> 5.5'
end
