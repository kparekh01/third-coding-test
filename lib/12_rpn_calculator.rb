class RPNCalculator
  attr_accessor :blank, :value
  def initialize
    @blank = []  #Set value of blank ot empty [] to store numbers that will be (.push)ed in to this empty array
  end
  def push(num)
    @blank << (num.to_f)  #defining push method to literally <<(push) the numbers in to the blank array!
  end
  def plus
    raise "calculator is empty" unless @blank.length >= 2 #will raise the error messages in quotes if at 2 numbers are not "pushed" into array
    @value = @blank.push(@blank.pop + @blank.pop).last#will add the last 2 numbers of an array(.pop) the last number being the first @blank.pop
  end                                                  #followed by adding it to the second @blank.pop (second to last number pushed into @blank)
  def minus                                            #and setting(.last) last number left in the array as the value for @value
    raise "calculator is empty" unless @blank.length >= 2
    @value = @blank.push(-@blank.pop + @blank.pop).last #same basic function as above except -@blank.pop because you are to subtract the second
  end                                                   #number from the first!
  def divide
    raise "calculator is empty" unless @blank.length >= 2
    numbers = @blank.pop(2)                             #here the last 2 #'s are stored in numbers variable, and then number variable is broken
    @value = @blank.push(numbers[0] / numbers[1]).last  #in to 2 numbers because we need to divide the first from the second, but above equation
  end                                                   #by default uses second number as first number
  def times
    raise "calculator is empty" unless @blank.length >= 2
    @value = @blank.push(@blank.pop * @blank.pop).last
  end
  def tokens(string)      #tried to do this method with gsub first but \ was giving a hard time to sub.  Here we are splitting the string and maping
      string.split.map do |each_element|  # the results to new []. If each_element.to_i is equal to 0 (*,+,-,/) any of these .to_i gives a result of 0
      each_element.to_i == 0 ? each_element.to_sym : each_element.to_i
    end                                                  #then each_element.to_sym will put the required : behind any of those symbols(literally
  end                                                    #turning them in to symbols).  The string numbers .to_i to intigers
  def evaluate(string)                     #Here we tokenize the string and map results to a new array.
  tokens(string).map do |each|             #If any of the elements(each) are = to the symbols stated, then
      if    each == :+                     #associate self with the appropriate instance method.
        self.plus
      elsif each == :-
        self.minus
      elsif each == :/
        self.divide
      elsif each == :*
        self.times
      else
        self.push(each)                             #else push each number to @blank
      end
    end
    self.value                                      #and return the @value
  end
end

