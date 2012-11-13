#language: es

Característica: adminstrar los posts

@admin
Escenario: Crear un post de animación y post y Realización
  Cuando hago click en "Post-afolio"
  Y hago click en "Nuevo Post"
  Y selecciono "Animación y Post" en "Tipo"
  Y lleno "Título" con "Un día como hoy"
  Y lleno "Descripción" con "Microprograma realizado en animación 2d"
  Y lleno "Video" con "http://vimeo.com/53043267"
  Y uso la imagen "post.jpg" para "Foto"
  Cuando presiono "Guardar"
  Entonces debería ver "Post creado correctamente."
  Y debería ver "Animación y Post"
  Y debería ver "Un día como hoy"
  Y debería ver "Microprograma realizado en animación 2d"
  Y debería ver la imagen "post.jpg"
  #Y debería ver el video "http://vimeo.com/53043267"

@admin
Escenario: Crear un post de diseño y web
  Cuando hago click en "Post-afolio"
  Y hago click en "Nuevo Post"
  Y selecciono "Diseño y Web" en "Tipo"
  Y lleno "Título" con "Website Lain Adelgaza"
  Y lleno "Descripción" con "Resumen acerca de que se trata el post Lain Adelgaza"
  Y lleno "Url Web" con "www.lainadelgaza.net"
  Y uso la imagen "post.jpg" para "Foto"
  Cuando presiono "Guardar"
  Entonces debería ver "Post creado correctamente."
  Y debería ver "Diseño y Web"
  Y debería ver "Website Lain Adelgaza"
  Y debería ver "Resumen acerca de que se trata el post Lain Adelgaza"
  Y debería ver la imagen "post.jpg"

@admin
Escenario: Editar un post
  Dado que existe el post "Website Lain Adelgaza"
  Cuando hago click en "Post-afolio"
  Y hago click en "Editar"
  Y selecciono "Realización" en "Tipo"
  Y lleno "Título" con "Website Lain Adelgaza"
  Y lleno "Descripción" con "Resumen acerca de que se trata el post Lain Adelgaza"
  Y lleno "Url Web" con "www.lainadelgaza.net"
  Y uso la imagen "post.jpg" para "Foto"
  Cuando presiono "Guardar"
  Entonces debería ver "Post actualizado correctamente."
  Y debería ver "Realización"
  Y debería ver "Website Lain Adelgaza"
  Y debería ver "Resumen acerca de que se trata el post Lain Adelgaza"
  Y debería ver la imagen "post.jpg"

@admin
  Escenario: Eliminar un post
  Dado que existe el post "Website Lain Adelgaza"
  Cuando hago click en "Post-afolio"
  Y hago click en "Eliminar"
  Entonces debería ver "Post eliminado correctamente."

Escenario: Los usuarios pueden ver los posts
  Dado que existe el post "Website Lain Adelgaza"
  Y que estoy en la página inicial
  Entonces debería ver "Website Lain Adelgaza"
  Y debería ver la imagen "post.jpg"
  Y no debería ver los controles de administración
