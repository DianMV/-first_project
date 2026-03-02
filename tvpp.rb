# frozen_string_literal: true

# Se tienen 2 arrays, uno contiene las notas de los alumnos y el otro los carnes de los alumnos, las posiciones entre los tres arrays corresponden a un mismo alumno, y la información está ordenada en base a las notas de menor a mayor.
# Dada una nota ingresada por el usuario, una función debe eliminar de los arrays a los alumnos que poseen dicha nota, para ubicarlos debe realizar una búsqueda binaria, y devolver como resultado los arrays modificados.

notas = [10, 12, 12, 14, 15, 15, 17, 19, 19, 19, 20]

puts 'write a number'
num = gets.chomp.to_i

middle = (notas.length - 1) / 2
notas.delete_at(middle) if num == notas[middle]
if num < notas[middle]
  (0..middle).reverse_each do |i|
    notas.delete_at(i) if notas[i] == num
  end
elsif num > notas[middle]
  (middle..notas.length).reverse_each do |i|
    notas.delete_at(i) if notas[i] == num
  end
end
puts notas.inspect
