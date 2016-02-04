require 'sinatra'
require 'sinatra/reloader'
require 'rss'

get '/' do
  @rss = RSS::Parser.parse("http://monst.fantena.net/feed.rss")
  erb :index
end
