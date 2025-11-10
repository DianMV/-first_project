#1.- Escriba un algoritmo que pida un número entero positivo y diga si el número es primo o no.
number=-1
until number>=0
    puts "write a positive number"
    number=gets.chomp.to_i
end

a=true
(2...number).each do |n|
    if number%n==0 || number==1 
        puts "the number is not prime"
        a=false
        break
    end
end

if a==true
    puts "the number is prime"
end
