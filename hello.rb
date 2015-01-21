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

	get '/newfeature' do
		{:msg => "New Feature is Added"}.to_json
	end

	get '/newfeature2' do
		"<a href='http://www.google.com/'>do something</a>"
	end

	def h(name)
		puts "Hello #{name}!"
	end
end
