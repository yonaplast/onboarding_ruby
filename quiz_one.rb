#array = [‘hello’, ‘from’, ‘streaver’]
#Provide the code to achieve the following:

#Step 1
#Give 3 possible ways of returning ‘streaver’
def give_streaver
#choose your favourite way haha and try it, there are seven
    array=['hello','from','streaver']
    array[2]
    #array.at(2)
    #array[-1]
    #array.at(-1)
    #array.last
    #array.at[array.size-1]
    #array.at(array.size-1)
end

#Step 2
#Give at least 2 ways of adding the string ‘!’ to the previous array
def add_string(array=['hello','from','streaver'], index=0, string='!')
#here you can choose again your favorite way to add, i prefer first way to select where add it
    array.insert(index,string)
    #array.push(string)
end

#Step 3
#Convert all strings in the array to capital
def convert_string_to_capitals(array_of_strings=["hello", "from", "streaver"])
    array_of_strings.map { |string| string.upcase! }
end

#Step 4
#For each word in the array, if the word contains two consecutive consonants, replace them by a capital "S"
def delete_consonants_duplicated(array_of_strings=["hello", "from", "streaver"], replace='S')
    array_of_strings.map { |string| string.gsub!(/[^aeiouAEIOU]{2,}/,replace) }
end

#Step 5
#Provide a CLI based solution to interact with and make the entry data variable


puts "Step 1"
puts give_streaver
puts "\n"

puts "Step 2"
puts add_string().to_s
puts "\n"

puts "Step 3"
puts convert_string_to_capitals.to_s
puts "\n"

puts "Step 4"
puts delete_consonants_duplicated.to_s
puts "\n"

array_global = []
puts "NOW YOU CAN TRY WITH YOUR ARRAY :)"
puts "First add strings, stop with entry nil\n"
print "FIRST STRING: "
string = gets.chomp
while (string != 'nil') do
    array_global.push(string)
    print "OTHER STRING: "
    string = gets.chomp  
end
puts "Ok your array is #{array_global}"
puts "\n"

puts "NOW CHOOSE\n"
puts "1. Add a new element"
puts "2. Convert all strings to capital"
puts "3. Delete characteres consecutive"
puts "4. To exit"

print "OPTION: "
option = gets.chomp
while (option != "4") do
    case option
    when "1"
        puts "\n\nSelect a element with index"
        print "INDEX: "
        index = gets.chomp.to_i
        print "STRING: "
        string = gets.chomp
        puts add_string(array_global, index, string).to_s
        puts "\n"
    when "2"
        puts "\n\nConvert all strings to capital"
        puts convert_string_to_capitals(array_global).to_s
        puts "\n"
    when "3"
        puts "\n\nDelete characteres consecutive"
        print "STRING TO REPLACE: "
        replace = gets.chomp
        puts delete_consonants_duplicated(array_global,replace).to_s
        puts "\n"
    end
    print "OPTION: "
    option = gets.chomp
end
