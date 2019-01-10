def ask_number 
  question = "Donne moi un nombre IMPAIR entre 1 et 25"
  puts question
  print " >"
  num = gets.chomp.to_i
  number = ((num+1) / 2)
  return number
end

def pyramid(number)
 
  number.times do |i|
    
    a = "#" * ((2*i) + 1)

    print " " * (number - i -1 )
    puts a

  end
end

def pyramid_down(number)

  number.times do |i|

  a = "#" * ((number*2 - 2*i) - 1)

  print " " * (i + 1)
  puts a

  end
end

def wtf_pyramid
  number = ask_number
  pyramid(number)
  
  number = number - 1
  pyramid_down(number)
end

wtf_pyramid