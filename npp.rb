numbers = [9, 6, 5, 3, 1]
puts "what's the number you wanna add"
numb = gets.chomp.to_i
quantity = 0
new = []

if numb > numbers[numbers.length - 1]
  numbers.each_with_index do |i, _n|
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
