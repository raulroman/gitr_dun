def average(array)
  sum = 0
  index = 0

  while index < array.length
    sum = sum + array[index]
    index = index + 1
  end  
      
  average = sum.to_f / array.length.to_f
end

p average([2, 1, 7, 5])



def average(array)
  sum = 0
  index = 0 

  array.each do |index|
    sum = sum + array[index] 
    index = index + 1
  end

  average = sum.to_f / array.length.to_f

end
p average([2, 1, 7, 5])





