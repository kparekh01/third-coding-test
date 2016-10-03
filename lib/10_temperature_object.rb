class Temperature
  def initialize(options = {})     #Object's constructor method which has an options hash(which could be named anything else, but i went with options)
    @options = options             #has both fahrenheit and celsius entries, not sure why exercise
    @fahrenheit = @options[:f]     #said either :f or :c.
    @celsius = @options[:c]
  end
  def in_fahrenheit #Instance method 1 if entry is in :f (Temperature.new(:f => 50).in_fahrenheit) then return @fahrenheit(50)
    @options.include?(:f) ?  @fahrenheit : @celsius * 1.8 + 32 #else Temperature.new(:c => 100).in_fahrenheit then convert and return (212)
  end
  def in_celsius    #Instance method 2 same as above except switch :f with :c
    @options.include?(:c) ?  @celsius :  (@fahrenheit - 32) * 5/9
  end
  def self.from_celsius(degrees)          #Class method 1 Temperature.from_celsius(50) is now read as Temperature.new(:c => 50)
      self.new(:c => degrees)
  end
  def self.from_fahrenheit(degrees)       #Class method 2 Temperature.from_fahrenheit(50) is now read as Temperature.new(:f => 50)
      self.new(:f => degrees)
  end
  def self.ftoc(degrees)              #Class method 3 --> which uses an instance method inside of it (in_celsius)
      self.from_fahrenheit(degrees).in_celsius #Temperature.ftoc(50) is now read Temperature.from_fahrenheit(50).in_celsius
  end
  def self.ctof(degrees)              #Class method 4 --> which uses an instance method inside of it (in_fahrenheit)
      self.from_celsius(degrees).in_fahrenheit #Temperature.ctof(50) is now read Temperature.from_celsius(50).in_fahrenheit
  end
end
class Celsius < Temperature      #Subclass 1 = here I created a sub-class Celsius that inherits attributes from main class Temperature
  def initialize(degrees)        #it has to be passed at least one argument (degrees).  ex: Celsius.new(50), and now super(c: degrees)
    super(c: degrees)            #is stored in @celsius and now you can use any of the instance method in the Temperature class but
  end                            #NOT THE Temperature CLASS METHODS!
end
class Fahrenheit < Temperature    #Subclass 2 -- same as above!
  def initialize(degrees)
    super(f: degrees)
  end
end



