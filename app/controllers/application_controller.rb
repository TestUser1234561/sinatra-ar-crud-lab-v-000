require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

  end

  get '/posts/new' do
    erb :new
  end

  post '/posts' do
    @post = Post.create(:name => params[:name], :content => params[:content])
    @name = @post.name
    @content = @post.content
    erb :view
  end

  get '/posts' do
    @posts = Post.all

  end
end
