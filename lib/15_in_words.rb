class Fixnum
  attr_accessor :number
  def in_words
    @number = self
    number_hash = {
        0 => 'zero',
        1 => 'one',
        2 => 'two',
        3 => 'three',
        4 => 'four',
        5 => 'five',
        6 => 'six',
        7 => 'seven',
        8 => 'eight',
        9 => 'nine',
        10 => 'ten',
        11 => 'eleven',
        12 => 'twelve',
        13 => 'thirteen',
        14 => 'fourteen',
        15 => 'fifteen',
        16 => 'sixteen',
        17 => 'seventeen',
        18 => 'eighteen',
        19 => 'nineteen',
        20 => 'twenty',
        30 => 'thirty',
        40 => 'forty',
        50 => 'fifty',
        60 => 'sixty',
        70 => 'seventy',
        80 => 'eighty',
        90 => 'ninety',
        100 => 'one hundred',
        1000 => 'one thousand',
        1000000 => 'one million',
        1000000000 => "billion",
        1000000000000 => "trillion"
    }
    result = ""
    number_hash.each do |divisor|
      (key1, key2) = @number.divmod(divisor)
      p key1
      p key2
    end
  end
end
=begin
if self > 20 && self < 100 && self % 10 != 0
  x = self.divmod(10)
  return number_hash[x[0]*10] + " " + number_hash[x[1]]
elsif self > 100 && self < 1000
  x = self.divmod(100)
  return number_hash[x[0]] + " " + "hundred" + " "+ number_hash[x[1] ]
else
  return number_hash[self]
end
end
=end