# 2.- Escriba un algoritmo que pida dos números enteros positivos y presente todos los números primos comprendidos entre dichos números. El segundo número ingresado no es necesariamente mayor que el primero.

def positive(a)
  a >= 0
end

def get_number
  puts 'write a positive number'
  gets.chomp.to_i
end

n1 = -1
n1 = get_number until positive(n1)

n2 = -1
n2 = get_number until positive(n2)

def one_or_zero?(n)
  [1, 0].include?(n)
end

def prime?(a, b)
  a % b == 0
end

def first_num_greater?(a, b)
  a > b
end

if !first_num_greater?(n1, n2)
  (n1..n2).each do |n|
    next if one_or_zero?(n)

    a = true
    (2...n).each do |i|
      if prime?(n, i)
        a = false
        break
      end
    end
    puts "#{n} is prime" if a == true
  end

elsif first_num_greater?(n1, n2)
  (n2..n1).each do |n|
    next if one_or_zero?(n)

    a = true
    (2...n).each do |i|
      if prime?(n, i)
        a = false
        break
      end
    end

    puts "#{n} is prime" if a == true
  end

end
