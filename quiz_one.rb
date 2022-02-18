require 'colorize'

#Step 1
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
def add_string(array=['hello','from','streaver'], index=0, string='!')
#here you can choose again your favorite way to add, i prefer first way to select where add it
    array.insert(index,string)
    #array.push(string)
end

#Step 3
def convert_string_to_capitals(array_of_strings=["hello", "from", "streaver"])
    array_of_strings.map { |string| string.upcase! }
end

#Step 4
def delete_consonants_duplicated(array_of_strings=["hello", "from", "streaver"], replace='S')
    array_of_strings.map { |string| string.gsub!(/[^aeiouAEIOU]{2,}/,replace) }
end

#Step 5
def menu
    system("sleep 5")
    system("clear")
    puts "CHOOSE\n".bold.blue
    print "\t1) ".bold.blue
    puts "Add a new element".bold.white
    print "\t2) ".bold.blue
    puts "Convert all strings to capital".bold.white
    print "\t3) ".bold.blue
    puts "Delete characteres consecutive".bold.white
    print "\t4) ".bold.blue
    puts "Exit".bold.white
    print "OPTION: ".bold.blue
end

system("clear")
print "WELCOME TO THE ".bold.white
puts "FIRST QUIZ :)\n".bold.blue
puts "Step 1".blue
puts "\t #{give_streaver}".bold.white

puts "\nStep 2".blue
puts "\t #{add_string().to_s}".bold.white

puts "\nStep 3".blue
puts "\t #{convert_string_to_capitals.to_s}".bold.white

puts "\nStep 4".blue
puts "\t #{delete_consonants_duplicated.to_s}".bold.white

array_global = []
puts "\n\nNOW YOU CAN TRY WITH YOUR ARRAY :)".bold.white
print "\tAdd strings and finish adding ".bold.white
puts "nil\n".red
print "First String: ".bold.white
string = gets.chomp
while (string != 'nil') do
    array_global.push(string)
    print "Other String: ".bold.white
    string = gets.chomp  
end
puts "Ok your array is:".bold.white
puts "\t#{array_global}\n".blue

menu
option = gets.chomp
while (option != "4") do
    case option
    when "1"
        print "You choose ".bold.white
        puts "add a new element".bold.blue
        print "Index: ".bold.white
        index = gets.chomp.to_i
        while (index < array_global.length) do
            index = gets.chomp.to_i
        end
        print "String: ".bold.white
        string = gets.chomp
        puts "\t#{add_string(array_global, index, string).to_s}".bold.white
    when "2"
        print "You choose ".bold.white
        puts " convert all strings to capital".bold.blue
        puts "\t#{convert_string_to_capitals(array_global).to_s}".bold.white
    when "3"
        print "You choose ".bold.white
        puts " delete consecutive characteres".bold.blue
        print "String to replace: ".bold.white
        replace = gets.chomp
        puts "\t#{delete_consonants_duplicated(array_global,replace).to_s}".bold.white
    end
    menu
    option = gets.chomp
end
