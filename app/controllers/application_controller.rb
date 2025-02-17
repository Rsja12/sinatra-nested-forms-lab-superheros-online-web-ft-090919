require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :team 
    end

    post '/teams' do 
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        @team_members = params[:team][:members]
        erb :super_hero
    end

end

