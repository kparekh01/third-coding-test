def translate(string)
  vowels = %w{a e i o u}
  string.gsub( /\w+/ ) do |each_word|
    if vowels.include?(each_word[0])
      each_word + "ay"
    elsif vowels != each_word[0]  && vowels.include?(each_word[1]) && each_word[0..1] != "qu"
      each_word[1..-1] + each_word[0] + "ay"
    elsif vowels != each_word[0..1] && vowels.include?(each_word[2]) && each_word[1..2] != "qu"
      each_word[2..-1] + each_word[0..1] + "ay"
    elsif vowels != each_word[0..2]
      each_word[3..-1] + each_word[0..2] + "ay"
    end
  end
end

