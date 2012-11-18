module ApplicationHelper

  def paragraph(post, length)
    "#{truncate(post.descripcion, :length => length)}"
  end

  def agregar_clase_segun_tipo(post)
    "#{post.tipo == 'Diseño y Web'? 'foto' : 'video'}"
  end

  def agregar_tipo_como_clase(post)
    post.tipo.gsub(/ /,"").downcase
  end






end
