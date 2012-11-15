class PostsController < InheritedResources::Base
  def index
    @posts = Post.search(params[:search]).paginate(:per_page => 4, :page => params[:page])
  end
end
