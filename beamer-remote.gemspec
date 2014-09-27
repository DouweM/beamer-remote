$:.push File.expand_path("../lib", __FILE__)
require "beamer-remote/version"

Gem::Specification.new do |s|
  s.name          = "beamer-remote"
  s.version       = BeamerRemote::VERSION

  s.platform      = Gem::Platform::RUBY
  s.author        = "Douwe Maan"
  s.email         = "douwe@selenight.nl"
  s.homepage      = "https://github.com/DouweM/beamer-remote"
  s.description   = "Use your iPhone to browse through media on your Mac and instantly stream movies and TV shows to your Apple TV—without ever having to get off the couch."
  s.summary       = "Browse media on your Mac to stream to your Apple TV though Beamer, from your iPhone"
  s.license       = "MIT"

  s.files         = Dir.glob("lib/**/*") + Dir.glob("server/**/*") + %w(LICENSE README.md Rakefile Gemfile)
  s.test_files    = Dir.glob("spec/**/*")
  s.executables   = Dir.glob("bin/*").map { |f| File.basename(f) }
  s.require_path  = "lib"
  
  s.add_dependency "sinatra"
  s.add_dependency "vegas"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
end