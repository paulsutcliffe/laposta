class HomeController < ApplicationController
  def index
    @contacto = Contacto.new(params[:contacto])
    @miembros = Miembro.all
    @slides = Slide.all
    @posts = Post.all
  end

end
