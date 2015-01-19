require 'sinatra'
require 'sinatra/base'
require 'json'

class HelloService <Sinatra::Base
	#hello world 
	before do
		content_type :json
	end

	get '/' do
		{:msg => "Hello World"}.to_json
	end

	get '/newfeature' do
		{:msg => "New Feature is Added"}.to_json
	end

	def h(name)
		puts "Hello #{name}!"
	end
end
