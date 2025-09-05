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
        #if weight>30
        #puts "el equipaje no podra ser llevado"
        #puts "quiere llevar la maleta?"
        #answer=gets.chomp.downcase
            #if answer=="si"
            #redo
            #elsif answer=="no"
            #next
            #end
        #elsif weight>24 
        if weight>24 
        extra_charge+=134
        elsif weight>23 && weight<24
        addition_of_luggage_weight+=weight
        end
    puts " the extra charge is #{extra_charge} at the moment and the addition_of_luggage_weight is #{addition_of_luggage_weight}"
    end
    
    
    if i>2
        #if weight>30
        #puts "no puede llevar esa maleta"
        #puts "quiere llevar la maleta?"
        #answer=gets.chomp.downcase
            #if answer=="si"
            #redo
            #elsif answer=="no"
            #next
            #end
        #elsif weight>0
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





