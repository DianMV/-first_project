#6.- Escriba un algoritmo que pida un número entero positivo que es un factorial,
# y presente como resultado el número al que corresponde el factorial ingresado.
number=1
loop do
vf=1
a=true
puts "write a positive number"
n=gets.chomp.to_i
if n<=0
puts "the number should be positive or greater than 0, try again"
next
end

(2..n).each do |j|
vf*=j
if vf==n
number=j
break
elsif vf>n 
a=false
break
end
end
if a==false
puts "the number is not a factorial, try again"
next
end
break
end
puts "the factorial is #{number}!"