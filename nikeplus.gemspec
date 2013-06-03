Gem::Specification.new do |s|
  s.name        = 'nikeplus'
  s.version     = '0.0.4'
  s.date        = '2013-06-03'
  s.summary     = "NikePlus interface implementation"
  s.description = "NikePlus interface implementation"
  s.authors     = ["Ivan Kasatenko"]
  s.email       = 'sky.31338@gmail.com'
  s.files       = Dir['lib/**/*.rb']
  s.homepage    =
    'http://github.com/SkyWriter/nikeplus/'
  
  s.add_dependency('yajl-ruby')
  s.add_dependency('nokogiri')
end