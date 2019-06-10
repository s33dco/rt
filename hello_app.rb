require 'sinatra'
require './day'

get '/' do
  "Hello, world! #{greeting(Time.now)}, happy #{day_of_the_week(Time.now)} to ya!."
end
