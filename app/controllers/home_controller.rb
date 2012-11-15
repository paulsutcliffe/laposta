class HomeController < ApplicationController
  def index
    @contacto = Contacto.new(params[:contacto])
    @miembros = Miembro.all
    @slides = Slide.all
    @posts = Post.search(params[:search]).paginate(:per_page => 16, :page => params[:page])
    @ultimos_posts = Post.limit(3)
  end

end
