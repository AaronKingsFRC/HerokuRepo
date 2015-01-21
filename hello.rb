require 'sinatra'
require 'sinatra/base'
require 'json'

class HelloService <Sinatra::Base	
	before do
		content_type :json
	end

	get '/' do
		{:msg => "Hello World"}.to_json
	end

	#def h(name)
	#	puts "Hello #{name}!"
	#end
end

