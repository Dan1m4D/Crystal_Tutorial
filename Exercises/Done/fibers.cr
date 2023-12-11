# Exercício 1: Comunicação entre Fibers
# Fazer com que 2 fibers troquem uma mensagem

channel = Channel(String?).new
spawn do
    puts "Write message to fiber 2!"
    print "> "

    msg = gets

    channel.send(msg)

    puts "Sending!"
end


puts "Waiting for message"

msg = channel.receive

puts "Received message: "
puts msg
