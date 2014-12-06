require 'sinatra'
require 'sinatra/base'
require 'json_pure'
class HelloService <Sinatra::Base
	before do
		content_type :json
	end
	get '/' do
		{:msg => "Hello World"}.to_json
	end
end
