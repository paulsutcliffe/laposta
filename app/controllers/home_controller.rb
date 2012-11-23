class HomeController < ApplicationController
  def index
    @contacto = Contacto.new(params[:contacto])
    @miembros = Miembro.all
    @slides = Slide.all
    @posts = Post.order("created_at DESC")
    @ultimos_posts = Post.order("created_at DESC").limit(6)
  end

end
