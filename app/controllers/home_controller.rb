class HomeController < ApplicationController
  def index
    
    @posts = Post.all
    
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.save
    
    redirect_to '/'
  end
  
  def create_reply
    @reply = Reply.new
    @reply.post_id = params[:post_id]
    @reply.content = params[:content]
    @reply.save
    
  end
  
end
