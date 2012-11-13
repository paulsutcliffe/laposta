#language: es

Característica: adminstrar las imagenes de los posts

@admin
Escenario: Subir imagenes a un post del post-afolio
  Dado que existe el post "Website Lain Adelgaza"
  Cuando hago click en "Post-afolio"
  Y hago click en "Website Lain Adelgaza"
  Y hago click en "Agregar Imagenes"
  Y uso la imagen "imagen.jpg"
  Entonces debería esperar "30" segundos
  Y debería ver la imagen "imagen.jpg"
