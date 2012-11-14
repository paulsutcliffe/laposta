#language: es

Característica: adminstrar las imagenes de los posts

@admin
Escenario: Subir imagenes a un post del post-afolio
  Dado que existe el post "Website Lain Adelgaza"
  Cuando hago click en "Post-afolio"
  Y hago click en "Ver"
  Y hago click en "Imágenes"
  Y uso la imagen "imagen.jpg" para "imagen_path"
  Entonces debería esperar "10" segundos
  Y debería ver la imagen "imagen.jpg"
