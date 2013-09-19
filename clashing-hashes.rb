require 'twitter'
require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require_relative 'lib/follower_clash'

get '/' do
	
	@name = 'World'
	@partner_name = 'Galaxy'
	@show_description = true

	erb :index	
   	
end


post '/twitter' do
	erb :twitter	

	@user1 = Class::User.new params["login-a"]
end