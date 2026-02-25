#1. Suponga que existe un array de números enteros, ordenados en forma descendente.
#Se le pide crear un programa que pida al usuario un número entero y lo agregue al array, de tal manera que mantenga el array ordenado después de agregar al número entero.
#No puede utilizar algoritmos de ordenamiento.

orig_array= [9, 6, 5, 3, 1]
puts "what's the number you wanna add"
numb = gets.chomp.to_i
quantity = 0
new_array = []

if numb > orig_array[orig_array.length - 1]
  orig_array.each do |i|
    if numb < i
      new_array << i
      quantity += 1 #the amount is gonna be the first number from the loop range so the new array can add the reminding numbers from the original array.
    else
      new_array << numb

      break
    end
  end

  total = orig_array.length
  left = quantity

  #puts "#{total} and #{left}"

  (left...total).each do |j|
    new_array << orig_array[j]
  end
  puts new_array.inspect

else
  orig_array << numb
  puts orig_array.inspect
end
