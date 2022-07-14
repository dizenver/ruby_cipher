def ceaser_cipher(word,key)
  alpha = ('a'..'z').to_a  
  word.chars.map {|letter| 
    if alpha.include?(letter)
      alpha[alpha.find_index(letter.downcase) + key - alpha.size]
    elsif alpha.include?(letter.downcase)
      alpha[alpha.find_index(letter.downcase) + key - alpha.size].upcase
    else
      letter
    end}.join
end

print "Input word to encrypt:"
word = gets.chomp.to_s
print "Select numeric key for encryption:"
key = gets.chomp.to_i

p ceaser_cipher(word, key)