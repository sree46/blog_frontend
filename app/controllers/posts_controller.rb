class PostsController < ApplicationController
  
  def show
    #Call to BlogService::Post
    @post = Post.find(:one, :from => "/blog_service/posts/#{params[:id]}.xml")

    #Show post on frontend
    respond_to do |format|
      format.html
    end
  end
  
 
end
