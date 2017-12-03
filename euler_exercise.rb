# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.


i = 0
sum = 0
# numbers_array = []

1000.times do 
  i += 1
  if i % 3 == 0 || i % 5 == 0
    sum += i 
  end 
  i += 1
end

# sum = 0
# numbers_array.each do |number|
#   sum += number
# end
p sum
