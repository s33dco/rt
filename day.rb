require 'date' #sinatra already required date but needed as abstracted to own file

def day_of_the_week(time)
	Date::DAYNAMES[time.wday]
end

def greeting(time)
  case time.hour
	  when 0..6
	  	"you're up early".capitalize
	  when 7..11
	  	'Top of the Morning to you'
	  when 12..17
	  	'Good afternoon'
	  else
	  	'Good evening'
  end
end

