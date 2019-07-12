require './config/init.rb'

TodoItem.group("DATE_FORMAT(created_at, '%Y-%m-%d')").count.each do |created_at, count|
  puts " #{created_at}: #{count}"
end

puts '-' * 30

puts "      Total: #{TodoItem.count}"
