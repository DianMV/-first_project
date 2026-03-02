# frozen_string_literal: true

# Se tienen 4 arrays, uno contiene los carnes de los alumnos de la facultad de ingeniería, el segundo contiene los nombres de los alumnos, el tercero contiene el programa académico: S, E, C o A, y el cuarto contiene los índices académicos acumulados.
# Las posiciones entre los tres arrays se corresponden a un mismo alumno, y la información está ordenada alfabéticamente:
# Alumno en la posición 0: Arbulú Sanchez, Carlos
# Alumno en la posición 1: Benites Campos, María.

# Una empresa muy importante ha solicitado a Mario Quinde, director de programa de Ingeniería Industrial y de Sistemas, una lista de los alumnos de su programa académico que están en ciclos 9 o 10, que pertenecen al quinto superior, y ordenada por número de puesto. La empresa desea contratar a dichos alumnos como practicantes.
# Escriba una función que reciba como parámetros los arrays, y presente como resultado dicha lista: carne, nombre, índice acumulado

id = [2_019_001, 2_019_002, 2_019_003, 2_019_004, 2_019_005]
student_name = [
  'Arbulú Sanchez, Carlos',
  'Benites Campos, María',
  'Castro López, Juan',
  'Díaz Rivera, Ana',
  'Espinoza Torres, Luis'
]
GPA = [15.8, 17.2, 16.5, 18.0, 17.9]

n = 0
GPA_2 = []
id_2 = []
student_name_2 = []

while n < 5
  greatest = 0
  general_inx = 0
  GPA.each_with_index do |note, index|
    if note > greatest
      greatest = note
      general_inx = index
    end
  end

  GPA_2 << greatest
  id_2 << id[general_inx]
  student_name_2 << student_name[general_inx]
  GPA.delete_at(general_inx)
  id.delete_at(general_inx)
  student_name.delete_at(general_inx)
  n += 1
end

puts id_2.inspect
puts student_name_2.inspect
puts GPA_2.inspect

QSS = (GPA_2.length * 20) / 100
# calculating how many students are on the 'quinto superior', since it's only 1 student, it would be the first number from the array

puts "the student on the 5to superior would be id =#{id_2[QSS - 1]}, Full Name=#{student_name_2[QSS - 1]}, GPA=#{GPA_2[QSS - 1]}"
