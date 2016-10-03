def add(num1, num2)
   num1 + num2
end

def subtract(num1, num2)
   num1 - num2
end

def sum(array)
   array.inject(0) { |number, next_number| number + next_number } #eventually learned that .inject(:+) is even more efficient
end

def multiply(array)
   array.inject{|number, next_number| number * next_number} # .inject(:*) same result
end

def power(num1, num2)
    num1 ** num2
end

def factorial(num)
  if num == 0
    1
  elsif num < 0
    nil
  else
  num.downto(1).inject{|number, next_number| number * next_number} # .inject(:*) provides the same result
  end
end
