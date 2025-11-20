#8.- Escriba un algoritmo que pida a un pasajero de avión el peso de sus maletas.
	#El pasajero no tiene límite de maletas a llevar.
	#El programa pedirá el peso de cada una de las maletas, y dejará de pedir cuando se ingrese 0. Se asume que al ingresar 0, se está indicando que no se llevarán más maletas.
	#Si una maleta pesa más de 30 kilos, no podrá llevar la maleta
	#Si una maleta pesa más de 23 kilos, se pagará 35 soles por el sobre peso de dicha maleta
	#Presentar como resultado el número de maletas que llevará el pasajero y el monto que deberá pagar por sobre preso.|
    amount=0
extra_cost=0
weight=1
loop do
puts "what's the luggage's weight?"
weight=gets.chomp.to_i
if weight<0
puts "the number should be positive"
next
elsif weight==0
break
elsif weight>30
puts "you can't take that luggage"
next
else
amount+=1
end

if weight>23 
extra_cost+=35
end
end


if extra_cost==0
puts "the amount of luggages you're carrying is #{amount} and you have no extra cost for the luggage/s"
else puts "the amount of luggages you're carrying is #{amount} and you have to pay $#{extra_cost}"
end