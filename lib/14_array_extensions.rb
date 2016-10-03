class Array
  def sum                                  #In this method if "self"(array) has more then 1 number inside of it
    self.length > 1 ? self.inject(:+) : 0  #then self.inject(:+) will add all the numbers inside the array and return 1 number
  end                                      #representing the total if true or return 0 as required if false
  def square
    self.length > 1 ? self.map{|x| x**2} : [] #same function as above except for 2 things
  end                                         #1.  it will return a new array of numbers via .map representing the squared values
  def square!                                 #of each element inside of the array if true
    self.map!{|x| x**2}                       #2.  it will return [] blank array if false, not a zero.
  end
end  #For method square! I tried to use square!, but the error was stack level too deep, puts self.square gave me right results printed on screen
     #but it did not allow the test to pass.  The only way for the test to pass was to use the ! on map which in turn gave me the same array with
     #the changed values as a posed to map without ! which returns a completely diff. array leaving the original untouched.  So in short the
     #results printed out are exactly the same, but test recognizes the diff. between both map and map!, also works with method .collect!