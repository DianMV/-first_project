#7- Escriba un algoritmo que pida a un pasajero de avión el peso de sus maletas.
	#*El pasajero llevará máximo 10 maletas.
	#Si una maleta pesa 0, significa que no la llevará
	#Si una maleta pesa más de 30 kilos, no podrá llevar la maleta
    # Si una maleta pesa más de 23 kilos, se pagará 35 soles por el sobre peso de dicha maleta
	#Presentar como resultado el número de maletas que llevará el pasajero y el monto que deberá pagar por sobre preso.

amount=0
extra_cost=0
(1..10).each do |i|
puts "what's the weight for the luggage #{i}?"
weight=gets.chomp.to_i
if weight>0 &&weight<=30
amount+=1
elsif weight==0
next
elsif weight<0
puts "the weight should be positive, try again"
redo
end

if weight>30
puts "you can't carry that luggage with you"
next
elsif weight>23
extra_cost+=35
end
end

if extra_cost==0
puts"the amount of luggages you would carry is #{amount} and you don't have an extra cost to pay"
else
puts "the amount of luggages you would carry is #{amount} and the extra cost you would have to pay is $#{extra_cost} "
end	