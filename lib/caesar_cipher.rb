def caesar_cipher(string, number)
  alph_array = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
  punc_array = ["!", ".", "?", ",","'"," "]
  str_array = string.split('')
  upcase_index = []
  str_array.map! do |letter|
    if letter.match?(/[0-9]/)
      letter
    elsif punc_array.any?(letter)
      letter
    elsif letter == letter.upcase
      upcase_index.push(str_array.find_index(letter))
      alph_array.find_index(letter.downcase)
    else
      alph_array.find_index(letter)
    end
  end
  str_array.map! do |n|
    if n.class != Integer
      n
    elsif (n+number) > 25
      alph_array[(n+number)-26]
    else
      alph_array[n+number]
    end
  end
  i = 0
  until i >= upcase_index.length
    str_array[upcase_index[i]] = str_array[upcase_index[i]].upcase
    i += 1
  end
  encrypted_msg = str_array.join('')
end
# puts " - Caesar Cipher Encryption Machine - "
# puts "Please enter a word or phrase for encryption: "
# usr_string = gets.chomp
# puts "Please enter a Caesar shift value: "
# usr_number = gets.chomp.to_i
# caesar_cipher(usr_string, usr_number)