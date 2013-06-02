require 'sinatra'
require 'tdiary'

configure do
	set tdiary: TDiary::Application.new('/diary/')
end

get '/' do
	redirect '/diary/'
end

get '/diary/*' do
	settings.tdiary.call(request.env)
end

