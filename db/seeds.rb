# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


Miembro.delete_all
Miembro.create(
  :nombre => 'LOURDES PEÑA',
  :cargo => 'CEO / Productora General',
  :correo => 'lourdes@lapost-a.com',
  :telefono => '986 289 315' )

Miembro.create(
  :nombre => 'WALTER PEÑAHERRERA',
  :cargo => 'Director / Post Productor',
  :correo => 'walter@lapost-a.com',
  :telefono => '9994 5 9995' )

Miembro.create(
  :nombre => 'HIROSHI OGA',
  :cargo => 'Edición y Post Producción',
  :correo => 'hiroshi@lapost-a.com',
  :telefono => '986 270 475' )

Miembro.create(
  :nombre => 'EDGAR QUISPE',
  :cargo => 'Diseño e Ilustración',
  :correo => 'edgar@lapost-a.com',
  :telefono => '979 326 152' )

Post.delete_all
Post.create(
  :titulo => 'UN DÍA COMO HOY',
  :created_at => '28 Ago 2012',
  :descripcion => 'Microprograma realizado en animación 2D para Cenital S.A.C y RPP.' 
)
Post.create(
  :titulo => 'HUNGRY HOUR',
  :created_at => '02 Feb 2011',
  :descripcion => 'Diseño gráfico de banners, banderolas e individuales para Café Café.'
)
Post.create(
  :titulo => 'HUNGRY HOUR',
  :created_at => '02 Feb 2011',
  :descripcion => 'Diseño gráfico de banners, banderolas e individuales para Café Café.'
)

