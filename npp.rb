#1. Suponga que existe un array de números enteros, ordenados en forma descendente.
#Se le pide crear un programa que pida al usuario un número entero y lo agregue al array, de tal manera que mantenga el array ordenado después de agregar al número entero.
#No puede utilizar algoritmos de ordenamiento.

numbers = [9, 6, 5, 3, 1]
puts "what's the number you wanna add"
numb = gets.chomp.to_i
quantity = 0
new = []

if numb > numbers[numbers.length - 1]
  numbers.each do |i|
    if numb < i
      new << i
      quantity += 1
    else
      new << numb

      break
    end
  end

  total = numbers.length
  left = quantity

  puts "#{total} and #{left}"
  (left...total).each do |j|
    new << numbers[j]
  end
  puts new

else
  numbers << numb
  puts numbers
end
