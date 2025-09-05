#Pago por exceso de equipaje
#----------------------------
#Escribir el algoritmo que decide el monto que los pasajeros de una aerolínea deben pagar por exceso de equipaje.

#- El algoritmo debe atender a un pasajero
#- A cada pasajero se le solicita:
    #- Su nombre
	#- El peso de cada una de sus maletas en kilos, el peso debe ser preciso (acepta gramos)
	#- El máximo de maletas posibles para un pasajero son 4
	#- Si un pasajero no lleva 4 maletas, cuando se le solicite el peso, se ingresará 0
	#- Las dos primeras maletas son consideradas equipaje regular.
	#- Un equipaje regular puede pesar como máximo 23 kilos.
	#- Las condiciones para pagar por peso extra son:
	#	* Si un equipaje regular pesa más de 23 kilos, pero no supera los 24, no se paga extra. Caso contrario se pagará 134 soles de cargo extra.
	#	* Si los dos equipajes superan los 23 kilos, pero no los 24, y la suma del peso de estos es mayor a 47.5, se debe pagar un cargo extra de 117 soles.
	#	* Si un equipaje regular supera los 30 kilos, este no podrá ser llevado en el avión. El sistema indicará que no podrá llevar dicha maleta.
	#- Las dos últimas maletas son consideradas equipaje extra. Estas pueden pesar hasta un máximo de 30 kilos, si la maleta pesa más de 30 kilos, el pasajero no podrá llevar esta maleta. El sistema le indicará que no podrá llevar dicha maleta. El pago por cada equipaje extra es de 100 soles.
#- El algoritmo debe mostrar como resultado el monto total a pagar por equipaje extra
#...........................
#- Si el pasajero debe pagar, el algoritmo le preguntará con cuanto pagará
##- Considerando billetes de 1000, 500, 250, 100, 30, 10, 2: el sistema debe calcular el vuelto a entregar con la menor cantidad posible de billetes. En caso de no tener la cantidad exacta para entregar el vuelto, debe entregar 10 caramelos de limón por cada sol que falte.
#- Si el pasajero no tiene el dinero suficiente para pagar por el sobre peso, el sistema le indicará que no puede llevar todo ese sobre peso.
#...........................

puts "cual es su nombre?"
name=gets.chomp
nro_maletas=0
until nro_maletas>0 && nro_maletas<=4
    puts "#{name}, cuantas maletas llevas? (maximo 4)"
    nro_maletas=gets.chomp.to_i
    if  nro_maletas==0 || nro_maletas>4
        puts "error, ingrese otro numero mayor a 0 y menor igual a 4, ctmr"
    end
end
extra_charge=0
addition_of_luggage_weight=0

(1..nro_maletas).each do |i|
    puts "cual es el peso en kilos de la maleta #{i}?"
    weight=gets.chomp.to_f
   
    if weight<=0
       puts "tiene que tener un valor"
       redo
    elsif weight>30
        puts "el equipaje no podra ser llevado"
        puts "//////////////////////////////"
        puts "quiere llevar la maleta?"
        puts "(si)"
        puts "(no)"
        puts "//////////////////////////////"
        answer=gets.chomp.downcase
            if answer=="si"
                puts "restarting..."
            redo
            elsif answer=="no"
            puts "exiting..."
            next
            end
    end
    
    if i<=2
        if weight>24 
        extra_charge+=134
        elsif weight>23 && weight<24
        addition_of_luggage_weight+=weight
        end
    puts " the extra charge is #{extra_charge} at the moment and the addition_of_luggage_weight is #{addition_of_luggage_weight}"
    end
    
    
    if i>2
        if weight>0
        extra_charge+=100
        end
    puts " the extra charge is #{extra_charge}"
    end      
end

if addition_of_luggage_weight>47.5
        extra_charge+=117
        puts " the extra charge is #{extra_charge}"
end
    total=extra_charge

if total==0 
    puts "no hay un pago exra que debe realizar"
else 
    puts "el monto total por equipaje que debe pagar por equipaje extra es #{extra_charge}"
    puts "con cuanto pagara?"
    payment=gets.chomp.to_i
    change= payment-total
    puts "el vuelto que esperas es #{change}"

result={}
billetes=[1000, 500, 250, 100, 30, 10, 2]

billetes.each do |cantidad|
        
    if change>=cantidad
        cantidad_de_ese_billete=change/cantidad
        puts "la cantidad de billetes del billete/moneda de #{cantidad} soles es #{cantidad_de_ese_billete}"
        change-=cantidad_de_ese_billete*cantidad
        result[:cantidad_de_ese_billete]=cantidad
        puts "entonces el vuelto sería repartido como : #{cantidad_de_ese_billete} billetes/soles de #{result[:cantidad_de_ese_billete]} soles"
    end
end    

    if change>0
    cantidadDeCaramelos=change*10
    puts "y te daría #{cantidadDeCaramelos} caramelos pues sobra #{change} sol"
    end
end





