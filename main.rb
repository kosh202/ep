#frase = "Agendar com José reunião às 10:00 #trabalho hoje"
puts "Digite a frase: "
frase = gets
hora = frase.match(/((às)\s[0-9]+)|([0-9]+(\s(([0-9]+)|horas?)|\:[0-9]+))/)

acao = frase.match(/[A-z](gendar|arcar|eunião)/)

data = frase.match(/((ante|depois)\ (de\ )?)?(amanhã|ontem|hoje)|[0-9]{2}(\/[0-9]{2}(\/[0-9]{4})?|\ (de\ )?[A-z](aneiro|evereiro|arço|bril|aio|unho|ulho|gosto|etembro|utubro|ovembro|ezembro)(\ de)?(\ [0-9]{4})?)/)

name = frase.match(/com\ [A-Z][a-zà-ú]+(\ e\ [A-Z][a-zà-ú]+)?/)
nomes = name.to_s.scan(/[A-Z][a-zà-ú]+/)

tags = frase.match(/#[A-z]+/)


puts "Data: #{data}"
puts "hora: #{hora}"
puts "nome(s): #{nomes.inspect}"
puts "Ação: #{acao}"
puts "tags: #{tags}"
