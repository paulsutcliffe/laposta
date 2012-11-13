#language: es

Característica: adminstrar los slides

@admin
Escenario: Crear un Slide
  Cuando hago click en "Slides"
  Y hago click en "Nuevo Slide"
  Y uso la imagen "slide.jpg" para "Slide"
  Cuando presiono "Guardar"
  Entonces debería ver "Slide creado correctamente"
  Y debería ver la imagen "slide.jpg"

@admin
Escenario: Editar un Slide
  Cuando existe el Slide "slide.jpg"
  Y hago click en "Slides"
  Y hago click en "Editar"
  Y uso la imagen "slide2.jpg" para "Slide"
  Cuando presiono "Guardar"
  Entonces debería ver "Slide actualizado correctamente"
  Y debería ver la imagen "slide2.jpg"

@admin
Escenario: Eliminar un Slide
  Cuando existe el Slide "slide.jpg"
  Y hago click en "Slides"
  Y hago click en "Eliminar"
  Entonces debería ver "Slide eliminado correctamente"

Escenario: Los usuarios pueden ver los slides
  Cuando existe el Slide "slide.jpg"
  Y que estoy en la página inicial
  Entonces debería ver la imagen "slide.jpg"
  Y no debería ver los controles de administración
