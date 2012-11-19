class PostsController < InheritedResources::Base
  before_filter :authenticate_admin!
  def index
    @posts = Post.order("created_at DESC").paginate(:per_page => 4, :page => params[:page])
  end
end
