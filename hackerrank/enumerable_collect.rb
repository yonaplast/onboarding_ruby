def rot13(secret_messages)
    before = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    after = "NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm"
    secret_messages.map { |string| string.tr(before,after) }
end
input = ["Why","did","the","chicken", "cross", "the", "road?"]
puts rot13(input).to_s
