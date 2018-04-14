require 'date' unless defined? Date
files = Dir.glob('rbase/*.rb')
files.each do |file|
  require_relative file
end
