#2.- Escriba un algoritmo que pida dos números enteros positivos y presente todos los números primos comprendidos entre dichos números. El segundo número ingresado no es necesariamente mayor que el primero.
n1=-1
until n1>=0
puts "write a positive number"
n1=gets.chomp.to_i
end
n2=-1
until n2>=0
puts "write a second positive number"
n2=gets.chomp.to_i
end

if n1<n2
    (n1..n2).each do |n|
      if n==1 || n==0
        next
      end
     a=true
    (2...n).each do |i|
          if n%i==0 
            a=false
            break
          end
        
    end
      if a==true 
        puts "#{n} is prime"
      end  

    end
  
elsif
    n2<n1
    (n2..n1).each do |n|
      if n==1 || n==0
       next
      end
     a=true
    (2...n).each do |i|
          if n%i==0 
            a=false
            break
          end
     end

      if a==true
        puts "#{n} is prime"
      end  

    end

end