my_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
my_string = "Howdy partner, sit down! How's it going?"

def substrings(string,dictionary)
  word_matches = Hash.new(0)
  
  string = string.downcase.gsub(/[^\w\s]/, '')
  dictionary.each {|word| word_matches[word] = string.scan(word).count if string.include?(word)}

  return word_matches
end

p substrings(my_string,my_dictionary)