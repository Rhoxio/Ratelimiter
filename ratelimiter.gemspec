Gem::Specification.new do |s|
  s.name        = 'ratelimiter'
  s.version     = '0.0.0'
  s.date        = '2018-12-27'
  s.summary     = "A redis-backed ratelimiter for Ruby applications."
  s.description = "A gem to ratelimit inbound and outbound API calls within precise timeframes."
  s.authors     = ["Kevin Maze"]
  s.email       = 'rhoxiodbc@gmail.com'
  s.files       = ["lib/ratelimiter.rb"]
  s.homepage    = 'http://rubygems.org/gems/ratelimiter'
  s.license     = 'MIT'

  s.add_dependency "redis", ">= 4.1.0"
  s.add_dependency "redis-namespace", ">= 1.6.0"
  
end