$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require "rspec"
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

require "beamer-remote"