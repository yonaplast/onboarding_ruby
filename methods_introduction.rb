def prime?(number)
    return false if number <= 1
    (2...number/2+1).none? {|x| number%x == 0}
end
input = gets.chomp.to_i
if prime?(input)
    puts "Es primo!"
else
    puts "No es primo!"
end