#language: es

Característica: adminstrar los posts

@admin
Escenario: Crear un post
  Cuando hago click en "Post-afolio"
  Y hago click en "Nuevo Post"
  Y selecciono "Realización" en "Clase"
  Y lleno "Título" con "Alejo y los cangrejos solidarios"
  Y lleno "Descripción" con "Resumen acerca de que se trata el post Alejo y los cangrejos solidarios"
  Y lleno "Url web" con "www.lainadelgaza.net"
  Y uso la imagen "post.jpg"
  Cuando presiono "Guardar"
  Entonces debería ver "Post creado correctamente"
  Y debería ver "Alejo y los cangrejos solidarios"
  Y debería ver "Resumen acerca de que se trata el post Alejo y los cangrejos solidarios"
  Y debería ver la imagen "post.jpg"

@admin @editar
  Escenario: Editar un post
  Dado que existe el post "Lain Adelgaza"
  Y que estoy en la página inicial
  Cuando hago click en "Posts"
  Y hago click en "Posts y Canciones con Valores de la Tia Botas"
  Y hago click en "Editar"
  Y lleno "Nombre" con "Pomodoro el choro"
  Y uso la imagen "post2.jpg"
  Cuando presiono "Guardar"
  Entonces debería ver "Post actualizado correctamente"
  Y debería ver "Pomodoro el choro"
  Y debería ver la imagen "post2.jpg"

@admin
  Escenario: Eliminar un post
  Dado que existe el post "Alejo y los cangrejos solidarios" de la categoría "Posts y Canciones con Valores de la Tia Botas"
  Y que estoy en la página inicial
  Cuando hago click en "Posts"
  Y hago click en "Posts y Canciones con Valores de la Tia Botas"
  Y hago click en "Eliminar"
  Entonces debería ver "Post eliminado correctamente"
