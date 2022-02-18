def take(array, countDrop=1)
    array.drop(countDrop)
end

input = [1,2,3]
puts take(input,1).to_s
puts take(input,2).to_s
puts take(input).to_s
