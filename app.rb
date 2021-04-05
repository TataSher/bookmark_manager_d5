require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmarks'

class BookmarksManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark Manager'
  end

 get '/bookmarks' do
  @bookmarks = Bookmarks.all
    erb :'bookmarks/index'
 end

  run! if app_file == $0
end
