# Solution for Challenge: Create A Car Class from User Stories. Started 2014-03-05T18:40:25+00:00# Solution for Challenge: Create A Car Class from User Stories. Started 2014-03-05T18:40:25+00:00
class Car  
  def initialize(start)        
    @start = start 
  end
 
  def new_car(make,color)
    @make = make
    @color = color
    @distance = []
    @speed = 0        
  end

  attr_reader :distance, :make, :color 
 
  def play()
    next_step = @start
      while true
	step = method(next_step)
	next_step = step.call() 
      end
  end
 
  def show_distance
    @distance.inject { |x,y| x + y}
  end

  def distance(num)
    @distance << num
  end

  def begin()
    puts """Welcome to Aahrnold's Pizza Delivery. Where we GET PIZZA TO DA CHOPPA!!
Or just houses mostly, we rarely get chopper deliveries these days.
Anyway, off you go now!"""
    :garage
  end
  
  def garage()
    puts """First you need a CAHHRR! I prefer a humvee myself, what kind of car do you have?"""
    puts "Make?"
    u_car_make = gets.chomp
    puts "Color?"
    u_car_col = gets.chomp
    u_car = new_car(u_car_make, u_car_col)
    :drive
  end  

  def drive
    puts """Ok, let's hit the road. Your first turn in is 0.25 miles. 
The speed limit here is 25 mph."""
    puts "enter speed:"
    @speed = gets.chomp.to_i
      while @speed > 25
	puts "Easy there, coyboy"
	@speed = gets.chomp.to_i
      end
    :stop1 
  end 

  def stop1
    puts  """[aGPS (Aahrold's GPS) CURRENT SPEED #{@speed}]: 'APPROACHING TURN, GET TO DA: turn right! 
Would you like to turn right? y/n"""
    distance(0.25)
    response = gets.chomp.downcase
      while response != 'y'
	puts "You're going to have a bad time..."
	response = gets.chomp
      end
    puts "Nice job with the turn, great form" 
    puts "[aGPS]: GET TO DA: continue straight 1.5 miles!"
    puts "Current Speed limit is 35 mph, enter speed: "
    @speed = gets.chomp.to_i
      while @speed > 35
	puts "don't push it!"
	@speed = gets.chomp.to_i 
      end
    distance(1.5)
    :school_zone
  end

  def school_zone
    puts "[aGPS]: SLOW DOHHWNNN!CURRENT SPEED: #{@speed} ENTERING
 SCHOOL ZONE! REDUCE SPEED TO 15 MPH "
    puts "Enter Reduced speed: "
    @speed = gets.chomp.to_i
      while @speed > 15
	puts "TERMINATION UNAUTHORIZED: SLOW DOWN"
	@speed = gets.chomp.to_i
      end
    distance(0.25)
    :stop2
  end

  def stop2
    puts "[aGPS] APPROACHING turn, GET TO DA: turn left. Would you like to turn left? y/n"    
    response = gets.chomp
      while response != "y"
	puts "You're going to have a bad time"
	response = gets.chomp
      end
    puts "nice job with the left turn, even better than your right turn"
    :destination  
  end
  
  def destination
    puts "The speedlimit is 35 MPH, please enter your speed: "
    @speed = gets.chomp.to_i
      while @speed > 35
	puts "SLOWN DOHHHWNN!!"
	@speed = gets.chomp.to_i
      end
    distance(1.4)
    puts "Congratulations!! You've Arrived at your destination!!"
    puts "Total trip distance was #{show_distance} miles!" 
    Process.exit(0) 
  end
end

c = Car.new(:begin)
c.play
