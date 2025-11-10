#3.- Escriba un algoritmo que pida las notas de 10 alumnos e indique cuál es la mayor nota.


greater_note=0
(1..10).each do |n|
puts "write the grade of the student #{n}"
grade=gets.chomp.to_i
if grade<0 || grade>20
    puts "the grade range is from 0 to 20"
    redo
elsif grade>=greater_note
    greater_note=grade
end
end
puts "the greater note is #{greater_note}"
