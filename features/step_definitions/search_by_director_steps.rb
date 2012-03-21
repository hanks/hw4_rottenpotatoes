Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

When /the director of "(.*)" should be "(.*)"/ do |movie_name, director|
  movie = Movie.find_by_title(movie_name)
  assert_equal movie.director, director
end


