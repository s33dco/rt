require 'sinatra'
require './day' 

get '/' do
  "Hello, world! #{greeting(Time.now)}."
end
