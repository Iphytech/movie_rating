movies = {
  StarWars: 4.8, 
  Divergent: 4.7
  }

puts "What would you like to do? "

choice = gets.chomp

case choice
when "add"
  puts "What movie would you like to add? "
  title = gets.chomp
  puts "What rating does the movie have? "
  rating = gets.chomp
  if movies[title.to_sym].nil?
  movies[title.to_sym] = rating.to_i
  else
    puts "movie already exist"
  end
when "update"
 puts "please put your favourite title"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "the movie is not in the hash"
  else
    puts "put your rating"
    
    rating = gets.chomp
    
   movies[title.to_sym] = rating.to_i
  end
when "display"
  movies.each do | movie, rating|
    puts "#{movie}: #{rating}"
  end
when "delete"
  puts "Drop the movie title you want to delete"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "The title is not recorded"
  else
     movies.delete(title)
  end
else
  puts "Error!"
end