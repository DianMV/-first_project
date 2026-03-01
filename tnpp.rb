#2. Suponga que existe un array de números enteros. 
#Se le pide crear un programa que elimine los elementos del arreglo que no pertenezcan a la sucesión de Fibonacci.
#La sucesión de Fibonacci es una sucesión infinita que comienza con los números 1 y 1. 
#Cada término nuevo es igual a la suma delos dos anteriores: 1, 1, 2, 3, 5, 8, 13, 21, …

array=[1, 1, 2, 3, 5, 8, 13, 21]
arr_two=[4, 3, 5, 7, 13, 11, 15, 21]
new=[]
array.each do |i|
arr_two.each do |j|
if i==j
new<<j
end
end
end

puts new.inspect