Dir["./lib/*.rb"].each { |file| require file }
require "colorize"

CLI.new.start
