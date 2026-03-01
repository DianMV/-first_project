# frozen_string_literal: true

# 1.- Escriba un algoritmo que pida un número entero positivo y diga si el número es primo o no.
number = -1
until number >= 0
  puts 'write a positive number'
  number = gets.chomp.to_i
end

a = true
(2...number).each do |n|
  next unless (number % n).zero? || number == 1

  puts 'the number is not prime'
  a = false
  break
end

puts 'the number is prime' if a == true
