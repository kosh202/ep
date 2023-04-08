frase = "Agendar com José reunião às 10:00 #trabalho hoje"
hora = frase.match(/(([0-9][0-9]?[\:|\ ]([0-9]{2}|[a-z]{4}[a-z]?))|([a-zà-ú]{2}\ [0-9]{2}))/)


acao = frase.match(/agendar|marcar|reunião/)


data = frase.match(/((ante|depois)\ (de\ )?)?(amanhã|ontem|hoje)|[0-9]{2}(\/[0-9]{2}(\/[0-9]{4})?|\ (de\ )?[A-z](aneiro|evereiro|arço|bril|aio|unho|ulho|gosto|etembro|utubro|ovembro|ezembro)(\ de)?(\ [0-9]{4})?)/)



name = frase.match(/com\ [A-Z][a-zà-ú]+(\ e\ [A-Z][a-zà-ú]+)?/)
nomes = name.to_s.scan(/[A-Z][a-zà-ú]+/)
tags = frase.match(/#[A-z]+/)


puts " Data: #{data}"
puts "hora: #{hora}"
puts "nome(s): #{nomes.inspect}"
puts "Ação: #{acao}"
puts "tags: #{tags}"
