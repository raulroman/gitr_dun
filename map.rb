# Use 'map' method to convert the array of hashes
#items = [
#   {id: 1, body: 'foo'},
#   {id: 2, body: 'bar'},
#   {id: 3, body: 'foobar'}
# ]
# into an array that only contains the ids. The results should look like
# [1, 2, 3]


items = [
  {id: 1, body: 'foo'},
  {id: 2, body: 'bar'},
  {id: 3, body: 'foobar'}
]

p items.map { |item| item[:id]}