#Use the `select` method with the following array of hashes
movies = [
    {id: 1, title: "Die Hard", rating: 4.0},
    {id: 2, title: "Bad Boys", rating: 5.0},
    {id: 3, title: "The Chamber", rating: 3.0},
    {id: 4, title: "Fracture", rating: 2.0}
]

# to create a new array of hashes that only contain movies with a rating less than 4.0.
result = movies.select { |movie| movie[:rating]< 4.0 }
p result

#It can also be done this way as a do and end

result = movies.select do |movie| 
  movie[:rating] < 4.0
end
p result

