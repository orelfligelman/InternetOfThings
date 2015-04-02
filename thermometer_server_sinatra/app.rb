require 'sinatra'
require 'sinatra/activerecord'
require './environments'
require 'sinatra/base'

#
class ThermometerServer < ActiveRecord::Base
end
#Place rack middlewares here

#adminstrator access

# use Rack::Auth::Basic do |username, password|
#   username == 'admin' && password == 'secret'
# end

#configuration options

# configure do
#   # setting multiple options
#
#
#   set :environment => "development"
#   set :public_folder => "users associated images"
#   set :root => #dont know if ill need this, but its here in case you do
#   set :server => #may have to specify for different users
#   set :sessions => true
#   set :threaded => true #If set to true, will tell Thin to use EventMachine.defer for processing the request.
#   set :views => #again, needed if different users need different paths
#
#   # same as `set :option, true`
#   enable :option
#
#   # # same as `set :option, false`
#   # disable :option
#   # you can also have dynamic settings with blocks
#   #this might be useful when you eventually want one sinatra application per user, and you can dynamically set settingd based on device in question
#   set(:css_dir) { File.join(views, 'css') }
#
#
#   #accessing those settings
#
# #   get '/' do
# #     settings.a # => 1
# #     settings.b  # => 2
# #   end
# # end
# #
#
#
# # helpers
# #time helpers
#
# helpers do
#   def time_for(value)
#     case value
#       when :yesterday then Time.now - 24*60*60
#       when :tomorrow  then Time.now + 24*60*60
#       # when :one_hour_ago then Time.now - 24*60*60
#       else super
#     end
#   end
# end
#
#
# #the meat of the application
# #the general strategy for communicating information from thermometer to home automation system
# #first ill solve the problem of transferring the data
# #Then, ill solve the problem of making the data live
#
# #data transfer
# get ‘/thermometer/:id.?:format?’ do |n|
# # matches "GET /hello/foo" and "GET /hello/bar"
# # params[:name] is 'foo' or 'bar'
# # n stores params[:name]
# #.?.format supports requests for any formatting 		#type(html,son,xml, etc.)
# @thermometer = Thermometer.find(params[:id])
# #there is where I will halt the request if it is invalid
#   if @thermometer.doesntexist?
#     halt erb(:error)
#   else
#     erb :show, :format => :json
#     code = “Temperature is #{n}!"
#     erb code
#   end
# end
#
# #make it live
# get ‘/thermometer/:id/.?:format?’ do |n|
# # matches "GET /hello/foo" and "GET /hello/bar"
# # params[:name] is 'foo' or 'bar'
# # n stores params[:name]
# #.?.format supports requests for any formatting 		#type(html,son,xml, etc.)
# #data transfer
# @thermometer = Thermometer.find(params[:id])
# #there is where I will halt the request if it is invalid
# if @thermometer.doesntexist?
#
#   #two different ways of conveying an error message
#   halt erb(:error)
#   raise ThermometerNotFound, 'this thermometer does not exist'
# else
#   class Thermometer
#     def display_temperature
#       100000000000.times do
#       |i| yield "#{i}\n"
#         sleep(1)
#       end
#     end
#   end
# end
#
#
# #thermometer hasn't communicated data in five minutes
# get ‘/thermometer/:id/.?:format?’ do
#   raise ThermometerOffline, 'this thermometer hasn\'t reported a value in five minutes'
# end

#
#
# #error handling
#
# error ThermometerNotFound do
#   'So what happened was...' + env['sinatra.error'].message
# end
#
# error ThermometerOffline do
#   'So what happened was...' + env['sinatra.error'].message
# end
#
#
#
# #Future enhancements and experimental features
#
# #This may be a case where the user would like data to be stored automaticaaly on disk. Perhaps a weekly report on device statistics
#   get '/weeklyreport' do
#     attachment "thermometerweeklystats.xls"
#     "store it!"
#   end
#
#
# #This will eventually be incorporated for support for spreadsheet downloadds of home data
#   get '/download/*.*' do
#     # matches /download/path/to/file.xml
#     params[:splat] # => ["path/to/file", "xml"]
#     send_file 'thermometer.xls', :type => :xls
#   end
#
#
# # config.ru (run with rackup)
# require './thermometerserver'
# run ThermometerServer
