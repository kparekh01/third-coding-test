class Dictionary
  attr_accessor :entries, :keywords

  def initialize
    @entries = {}   #empty when d.entries is created
  end

  def add(input)
    input.class == String ?  @entries[input] = nil : input.each{|key,val| @entries[key] = val}
    @keywords = @entries.keys.sort  #if the class of input is a string("fish"),
  end                               #then that string will be the key in the @entries {} with a default value of nil{"fish" => nil}
                                    #else the proper hash provided({"fish" => "aquatic animal"}) will be stored in @entries)
                                    #@keywords defines the method and sets values to @entries.keys sorted as per the test request.
                                    #because you have the attr_accessor automatically read and write :keywords, there is no need for def keywords
  def include?(string)
    true if @entries.include?(string) #will return true if the string value is contained within the @entries hash as a key
  end                                 #@d.add("fish" => "Aquatic Animal")--@d.include?("fish") will return true

  def find(string)
      blank = {}
      @entries.each do|key, value|#Side note, tried using .include?() method here first, it passes the test but when running the code on a seperate
        key.start_with?(string) ? blank.merge!({key => value}) : blank#ide, not accurate and will print out any hash that has those 2 letters inside it
      end    #If key (start's_with) the prefix given for the value of a string(ex: if "fish".start_with?("fi")) is true
      blank  #than all keys that contain the prefix will merge with the blank {} via merge!(! meaning permanently change the original hash)
  end        #else if none start with the prefix, then blank hash is returned last

    def printable #this string interpolation was quite tedious to get test to pass, \n indicates next line
    blank = ""    #I had the format right and it looked exactly like what the test output wanted, not quite exactly i guess, but \n did the trick!
    @entries.sort.each{|key, val| blank << "#{[key].to_s.gsub('"', "")} \"#{val}\"\n"}#sorting the entries prior to each was the way to get key
    blank.strip #took the last \n off the end of last entry with strip                # value pairs in alphabetical order.
  end
end