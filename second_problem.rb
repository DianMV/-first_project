#Leonard, Sheldon, Penny, Howard y Raj deciden hacer una apuesta geek. Como recompensa, 
#el ganador de la apuesta se quedará con la colección de comics de los otros y la colección de zapatos de Penny.
#La apuesta consiste en identificar la mayor cantidad posible de números perfectos. 
#Un número perfecto es aquel que es igual a la suma de sus divisores sin incluir el mismo número, por ejemplo:
#28 = 1 + 2 + 4 + 7 + 14
#496 = 1 + 2 + 4 + 8 + 16 + 31 + 62 + 124 + 248
#8128 = 1 + 2 + 4 + 8 + 16 + 32 + 64 + 127 + 254 + 508 + 1016 + 2032 + 4064
#Usted debe escribir un programa que les permita realizar su apuesta. 
#El programa pedirá a cada uno de ellos ingresar dos números que representarán dos límites (sin ningún orden en particular). 
#El programa no puede permitir que la distancia entre dichos números sea mayor a 3437. 
#Luego el programa debe presentar quién es el ganador. 
#El ganador será aquella persona que entre su rango de números tenga la mayor cantidad de números perfectos.


winner=" "
greater=0
(1..5).each do
puts "write your name"
name=gets.chomp

first=0
second=0
loop do

puts "write 2 numbers"
n1=gets.chomp.to_i
n2=gets.chomp.to_i

first=[n1, n2].min
second=[n1, n2].max

distance=second-first

if distance<=3437
break
else
puts "the distance should be not greater than 3437, try again"
end
end

perf_num=[]
(first..second).each do |i|
   sum_div=0
   (1...i).each do |j|
      if i%j==0
      sum_div+=j
      end
     end
   if sum_div==i
   perf_num<<i
   end
end
puts "the perfect number/s between those numbers are/is #{perf_num}"

if perf_num.length>greater
  greater=perf_num.length
winner=name
end

end

puts "the winner is #{winner} that has #{greater} perfect number/s between the given numbers"
