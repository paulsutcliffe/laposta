#language: es
Característica: Los visitantes pueden envíar mensajes a través del formulario de contacto

Escenario: Enviar mensaje
  Dado que estoy en la página inicial
  Y lleno los campos del formulario con mis datos
  Cuando presiono "Enviar"
  Entonces debería ver "Mensaje enviado con éxito"

@admin
Escenario: revisar un mensaje enviado
  Dado que existe un mensaje de "Paul"
  Y que estoy en la página inicial
  Cuando hago click en "Mensajes de contacto"
  Y hago click en "Ver"
  Entonces debería ver "Paul"
  Y debería ver "paul@kosmyka.com"
  Y debería ver "Hola, este mensaje significa que estoy corriendo un test de aceptación en cucumber del app para la web de La Post-a."
