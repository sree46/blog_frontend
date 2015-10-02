class Post < BlogResource
  
  def to_param
    label rescue super
  end
    
  def full_desc
    meta_description || (dek.gsub(/<\/?[^>]*>/, "") unless dek.nil?) || title
  end
  
  class << self
  
    def find_posts_for_theme params
      # expects params: theme, sort, limit, offset

      
      Post.find(:all, :from => "/posts.xml", :params => params)
    end
  
  end

end
