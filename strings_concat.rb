def process_text(array_of_strings)
    string=""
    array_of_strings.each do |s|
        string = string + s.strip + " "
    end
    string.chop
end