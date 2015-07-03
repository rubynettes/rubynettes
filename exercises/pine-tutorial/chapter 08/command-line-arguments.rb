
puts "Your command line arguments were:"
ARGV.each_with_index do |arg, i|
  puts "  #{i}: #{arg}"
end