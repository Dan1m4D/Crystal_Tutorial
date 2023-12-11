#  This is an initial simple exercice for the crystal progamming language
#  This file aims to let you try out some simple syntax

require "http/server"

puts "This is a prototype for a simple syntax training Crystal program!"


class Message
    @@ID = 0
    @Message = ""

    def initialize(@Message = "")
        raise "Message length must be bigger than 0!" if @Message.size < 0     
        @@ID += 1
    end

    def getID() : Int
       @@ID 
    end

    def getMessage() : String
        @Message 
     end

    def to_s() : String
        "ID: #{@@ID} => #{@Message}\n"
    end
end



count = 0
greetings = ["Hello", "Welcome", "Boas"]


server = HTTP::Server.new do |srv|
    if greetings.size < 1
        message = Message.new("No more greetings to give!")

        srv.response.print message.to_s
        
        puts "No more greetings to give to #{srv.request.local_address}"
        next 
    end
    
    randNum = rand(greetings.size)
    chosenMsg = greetings[randNum]
    #  Remove from the list
    #  Here it is similar to greetings.delete(chosenMsg)
    greetings.delete_at(randNum)
    message = Message.new(chosenMsg)

    srv.response.print message.to_s
    
    puts "Message with ID #{message.getID} and vale #{message.getMessage} given to #{srv.request.local_address}"
end

puts "Opening server!"

server.listen(8900)