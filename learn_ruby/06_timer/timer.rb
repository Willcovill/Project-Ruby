class Timer
    attr_accessor :seconds, :minutes, :hours
  def initialize
      @seconds = 0
      @minutes = 0
      @hours = 0
  end
  
  def seconds=(num)
      while num >= 60 do
          @minutes +=1
          num -= 60
      end
      while @minutes >= 60 do
          @hours += 1
          @minutes -= 60
      end
      @seconds = num
  end
  
  def time_string 
      string = ""
      if @hours < 10
          string += ("0" + @hours.to_s)
      else string += @hours.to_s
      end
      string +=":"
      if @minutes < 10
          string += ("0" + @minutes.to_s)
      else string += @minutes.to_s
      end
      string +=":"
      if @seconds < 10
          string += ("0" + @seconds.to_s)
      else string += @seconds.to_s
      end
      string
  end
end
