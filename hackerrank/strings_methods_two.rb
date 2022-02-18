# Enter your code here
def strike(string)
    "<strike>" + "#{string}" + "</strike>"
end
def mask_article(string, array)
    array.map { |word| string.gsub!(/#{word}/, strike(word)) }
    string
end
