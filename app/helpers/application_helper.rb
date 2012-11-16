module ApplicationHelper

  def agregar_clase_segun_tipo(post)
    "#{post.tipo == 'Diseño y Web'? 'foto' : 'video'}"
  end


  def lightbox_si_es_video(post)

    #= link_to '', '01.jpg', 
    #  :"data-target" => 'flare', 
     # :"data-flare-gallery" => imagen.post(params[:post_id => post.id]), 
      #:"data-flare-thumb" => 'thumb01.jpg',
      #:"data-flare-video" => 'http://www.youtube.com/watch?v=AFA-rOls8YA'
  end




end
