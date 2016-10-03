class Timer
  attr_accessor :seconds, :minutes, :hours
  def initialize
    @seconds = 0 #@timer.seconds initializes to 0
    @minutes = 0
    @hours   = 0
  end
  def padded(num) #set up the helper method which helped to easily display string values of the numbers according to their size.
     num < 10  ?  "0" + num.to_s : num.to_s
  end
  def time_string
    while @seconds >= 60 #first while loop for counting minutes
      @minutes += 1
      @seconds -= 60
    end
    while @minutes >= 60 #second while loop for counting hours
      @hours += 1
      @minutes -= 60
    end
    padded(@hours) + ":" + padded(@minutes) + ":" + padded(@seconds) #used padded for displaying final string format with the addition of ":"
  end
end
