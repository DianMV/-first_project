# Se tienen 2 arrays, uno contiene las notas de los alumnos y el otro los carnes de los alumnos, las posiciones entre los tres arrays corresponden a un mismo alumno, y la información está ordenada en base a las notas de menor a mayor.
#Dada una nota ingresada por el usuario, una función debe eliminar de los arrays a los alumnos que poseen dicha nota, para ubicarlos debe realizar una búsqueda binaria, y devolver como resultado los arrays modificados.

notas  = [10, 12, 12, 14, 15, 15, 17, 19, 19, 19, 20]
carnes = [101, 102, 103, 104, 105, 106, 107, 108, 109,110, 111]

puts "write a number"
num=gets.chomp.to_i


  middle=(notas.length - 1)/2
  if num<notas[middle] #since the array is in order, we would only take into accounts the elements before the middle one if num was smaller than the middle one
  (0..middle).reverse_each do |i| #using reverse to avoid skiping the next element when an element repeats twice
    if notas[i]==num
      notas.delete_at(i)
    end
  end
  elsif num>notas[middle] 
    (middle..notas.length - 1).reverse_each do |i| #In case the middle number was smaller than num, we would take the numbers from the middle to the last element since num could only repeat itself further ahead
      if notas[i]==num
        notas.delete_at(i)
      end
    end
  
  elsif num==notas[middle]
    (0..notas.length - 1).reverse_each do |i|
      if notas[i]==num
        notas.delete_at(i)
      end
    end
  end
  puts notas.inspect
