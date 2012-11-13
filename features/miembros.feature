#language: es

Característica: administrar la página de los miembros

@admin
Escenario: Agregar miembro
  Dado que estoy en la página inicial
  Cuando hago click en "Staff"
  Y hago click en "Nuevo Miembro"
  Y lleno "Nombre" con "Walter Peñaherrera"
  Y lleno "Cargo" con "Editor"
  Y lleno "Correo" con "walter@lapost-a.com"
  Y lleno "Teléfono" con "998355383"
  Y uso la imagen "miembro.jpg" para "Avatar"
  Cuando presiono "Guardar"
  Entonces debería ver "Miembro creado correctamente."
  Y debería ver "Walter Peñaherrera"
  Y debería ver "walter@lapost-a.com"
  Y debería ver "998355383"
  Y debería ver la imagen "miembro.jpg"

@admin
Escenario: Editar un miembro existente
  Dado que existe el miembro "Walter Peñaherrera"
  Y que estoy en la página inicial
  Cuando hago click en "Staff"
  Y hago click en "Editar"
  Y lleno "Nombre" con "Miguel Grau"
  Y uso la imagen "miembro2.jpg" para "Avatar"
  Cuando presiono "Guardar"
  Entonces debería ver "Miembro actualizado correctamente."
  Y debería ver "Miguel Grau"
  Y debería ver la imagen "miembro2.jpg"

@admin
Escenario: Eliminar un miembro existente
  Dado que existe el miembro "Walter Peñaherrera"
  Y que estoy en la página inicial
  Cuando hago click en "Staff"
  Y hago click en "Eliminar"
  Entonces debería ver "Miembro eliminado correctamente."
  Y no debería ver "Walter Peñaherrera"

Escenario: Los usuarios pueden ver los miembros
  Dado que existe el miembro "Walter Peñaherrera"
  Y que estoy en la página inicial
  Entonces debería ver "Walter Peñaherrera"
  Y debería ver la imagen "miembro.jpg"
  Y no debería ver los controles de administración
