#  This is an initial simple exercice for the crystal progamming language
#  This file aims to let you try out some simple syntax

#  This is a library import
require "http/server"

#  This is a simple print to the terminal
puts "This is a prototype for a simple syntax training Crystal program!"

#  Here is a class definition
class Message
    @@ID = 0
    @Message = ""

    #  This is the class constructor
    def initialize(@Message = "")
        raise "Message length must be bigger than 0!" if @Message.size < 0     
        @@ID += 1
    end

    #  These are two manual getters
    def getID() : Int
       @@ID 
    end

    def getMessage() : String
        @Message 
     end

    #  This is the default toString method
    def to_s() : String
        "ID: #{@@ID} => #{@Message}\n"
    end
end


#  Here are some variable definitions
count = 0
greetings = ["Hello", "Welcome", "Boas"]


#  This is a n HTTP server cotext
server = HTTP::Server.new do |srv|
    #  This is some flow control (if)
    if greetings.size < 1
        #  And here is a object declaration
        message = Message.new("No more greetings to give!")

        #  Here we send back the reponse with the object to_s
        srv.response.print message.to_s
        
        puts "No more greetings to give to #{srv.request.local_address}"
        #  Skip the rest
        next 
    end
    
    #  Generate a random integer and get the corresponding message
    randNum = rand(greetings.size)
    chosenMsg = greetings[randNum]
    #  Remove from the list
    #  Here it is similar to greetings.delete(chosenMsg)
    greetings.delete_at(randNum)

    #  Create the message object
    message = Message.new(chosenMsg)
    #  Send the response
    srv.response.print message.to_s
    
    puts "Message with ID #{message.getID} and vale #{message.getMessage} given to #{srv.request.local_address}"
end

puts "Opening server!"
#  Open the server to new conections
server.listen(8900)