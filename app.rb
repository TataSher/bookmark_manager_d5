require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmarks'

class BookmarksManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions, :method_override

  get '/' do
    'Bookmark Manager'
  end

get '/bookmarks' do
  @bookmarks = Bookmarks.all
    erb :'bookmarks/index'
end

get '/bookmarks/new' do
  erb :'bookmarks/new'
end

post '/bookmarks' do
  Bookmarks.create(url: params[:url], title: params[:title])
  redirect '/bookmarks'
end

delete '/bookmarks/:id' do
  Bookmarks.delete(id: params[:id])
  redirect '/bookmarks'
end



run! if app_file == $0
end
