# Write a method called `reverse_a_string` that accepts a string as a parameter. 
def reverse_a_string(word_string)
  i = word_string.length - 1
  new_str = []
    
  word_string.length.times do
    p word_string[i]
    new_str << word_string[i]
    i -= 1
  end
  return new_str.join
end
p reverse_a_string("abcde") 

	# returns the reverse
# The one caveat: Don’t use the reverse method that already comes with Ruby!