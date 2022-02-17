def count_multibyte_char(input)
    count = 0
    input.each_char { |c| count=count +1 if c.bytesize > 1}
    count
end
