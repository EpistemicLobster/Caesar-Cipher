def caesar_cipher(string, number)
  alph_array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", 
    "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  punc_array = ["!", ".", "?", ",","'"," "]
  str_array = string.split('')
  upcase_index = []
  str_array.map! do |letter|
    if punc_array.any?(letter)
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
      p n
    elsif (n+number) > 25
      alph_array[(n+number)-26]
    else
      alph_array[n+number]
    end
  end
  i = 0
  p str_array
  until i >= upcase_index.length
    str_array[upcase_index[i]] = str_array[upcase_index[i]].upcase
    i += 1
  end
  str_array.join('')
end