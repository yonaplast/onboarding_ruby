def palindrome?(num)
  i = 0
  j = num.size - 1
  while (num[i] == num[j] && i<=j) do
    i=i+1
    j=j-1
  end
  if (i > j)
    return true
  else
    return false
  end
end

def prime?(num)
  return false if num <= 1
  (2...num/2+1).lazy.none? {|x| num%x == 0}
end

number = gets().chomp.to_i
array = []
num = 1
while (array.length < number) do
  array.push(num) if (palindrome?(num.to_s) && prime?(num))
  num= num + 1
end
puts array.to_s