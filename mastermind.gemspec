gem build mastermind.gemspec
Gem::Specification.new do |s|
  s.name        = 'mastermind'
  s.version     = '0.0.9'
  s.date        = '2014-09-25'
  s.summary     = "mastermind"
  s.description = "mastermind game made in ruby"
  s.authors     = ["Konr Larson"]
  s.email       = 'larsonkonr@gmail.com'
  s.files       = ["lib/*.rb",
                   "mastermind.rb",
                   "readme.md"]
  s.homepage    =
    'https://rubygems.org/gems/mastermind-larsonkonr'
end
