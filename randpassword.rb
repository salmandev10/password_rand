
def num_random(num)
  num = Array.new(10) { rand(1...9) }  # generate random numbers Array
  num
end

def alpha_random(alp)
    alp = [*('a'..'z')]  # generate an Array of alphabets
    alp
end

def special_char(special_chr)
  special_chr = ['!','"','#','$','%','&',',','(',')','*','+','-','.','/',':',';','<','=','>','?']
  special_chr # returning the special characters Array
end

# User Inputs to generate a password

puts "Press 1 to Add number in Password"
opt_num = gets.chomp
puts "Press 1 to Add small alphabets in Password"
opt_alpha = gets.chomp
puts "Press 1 to Add Special Character in Password"
special_chr = gets.chomp
puts "Kindly enter the length of the password"
len = gets.chomp
# variable for storing the generated password

generated_password = ""
tem_num = ""
tem_alph = ""
tem_chr = ""

if len!=0
  if opt_num == '1'
    tem_num = [num_random(opt_num)].join
  end
  if opt_alpha == '1'
    tem_alph = [alpha_random(opt_alpha)].join
  end
  if special_chr == '1'
    special_char(special_chr)
    tem_chr = [special_char(special_chr)].join
  end
  generated_password=tem_num+tem_alph+tem_chr
  generated_password=generated_password.chars.to_a.shuffle().join
  puts generated_password=generated_password.slice(0,Integer(len))

else
  "You have Entered A Wrong Password Length"
end






