#4.- Escriba un algoritmo que pida los nombres y las puntuaciones obtenidas por cada uno de los 10 equipos de Quidditch que participan en la copa "Albus Percival Wulfric Brian Dumbledore", e indique quién es el campeón y quién obtuvo el último puesto.
greatest_score=0
lowest_score=Float::INFINITY
winner=""
loser=""
(1..10).each do |team|
puts "team #{team}, what's your team's name?"
team_name=gets.chomp
puts "what was your score?"
score=gets.chomp.to_i


if score >=greatest_score
    greatest_score=score
    winner=team_name
elsif
  score <=lowest_score
    lowest_score=score
    loser=team_name
end
end


puts "the winner is the team #{winner} with #{greatest_score} and the last place was the team #{loser} with #{lowest_score} points"
