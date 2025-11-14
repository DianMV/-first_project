#5.- Escriba un algoritmo que pida un número entero mayor o igual a cero, y presente como resultado el factorial de dicho número.

until n>=0 && n%1==0
puts "write a integer number greater or equal to 0"
n=gets.chomp.to_f
end
n=n.to_i
factorial=1
(2..n).each do |i|
factorial*=i
end

puts "the factorial of #{n} is #{factorial}"