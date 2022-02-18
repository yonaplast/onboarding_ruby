class User
    def initialize(name, age)
        @name = name
        if age < 0
            #RuntimeException is default
            raise "Not negative ages bro!"
            #raise TypeError, mensaje
        else
            @age = age
    end
    def to_s
        "I'm #{@name} and I'am #{@age} years old!"
    end
end

begin
    user = User.new("Juan", 20)
#rescue => e
rescue Exception => e #Excepcion mayor
    puts e.message
    puts e.backtrace.inspect
#rescue other rescues
#ensure, sin importar lo que suceda se va ejecutar
end


# result = begin

# rescue

# end
# puts result
# Objeto como resultado que es muy util para los tests

puts user.to_s
