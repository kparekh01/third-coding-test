class Book
  attr_accessor :title
  def title
    stop_words = %w[in an the of and a]
   @title.capitalize.gsub( /\w+/ ){ |words| stop_words.include?(words) ? words : words.capitalize }
  end
end

=begin
In this I started by creating an instance variable via attr_accessor called :title. Then defied the method title
and inside the method created a variable stop_words which holds an array with 6 stop_words that I actually don't want
capitalized unless they are the first words of the title.  I started by capitalizing @title(capitalizes the very 1st word no matter what the word is)
and than I used g.sub(/\w+/) to globally substitute every word in the @title, and executed a code block which takes the title words and will capitalize
them only if the words are not == any of the stop_words.
"the catcher and the rye".capitalize == "The catcher and the rye".gsub(the first word is "The", not included in stop_words as it is "the" in array)
so "The" being the first word stays capitalized no matter what, and as the title is iterated when it gets to "and" the second "the"
this time it matches the array and they will not be capitalized, but the rest of the title will.
=end