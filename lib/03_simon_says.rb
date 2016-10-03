def echo(string)
  string
end

def shout(string)
   string.upcase
end

def repeat(string, num=2)
  ((string + " ") * num).strip
end

def start_of_word(string, position)
  string[0..(position-1)]
end

def first_word(string)
  words = string.split
  words[0]
end

def titleize(string) # had a big problem using .gsub here as I was able to produce the necessary results, all except for the last title
  words = string.split # in which the word "over" supposed to be left uncapitalized, but somehow kept getting stuck, and had to use the while loop!
  i = 0
  while i < words.length
    each_word = words[i]
    each_word[0] = each_word[0].upcase if words.length == 1 || each_word == words.first || each_word == words.last || each_word.length > 4
    i += 1
  end
  words.join(" ")
end

