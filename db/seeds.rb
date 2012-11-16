# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

#############################################################################
# Miembro Model
#############################################################################
Miembro.delete_all
Miembro.create(
  :nombre => 'LOURDES PEÑA',
  :cargo => 'CEO / Productora General',
  :correo => 'lourdes@lapost-a.com',
  :telefono => '986 289 315',
  :avatar => File.open(File.join(Rails.root, '/public/images/images/img-staff-front.jpg')))

Miembro.create(
  :nombre => 'WALTER PEÑAHERRERA',
  :cargo => 'Director / Post Productor',
  :correo => 'walter@lapost-a.com',
  :telefono => '9994 5 9995',
  :avatar => File.open(File.join(Rails.root, '/public/images/images/img-staff-front.jpg')))
Miembro.create(
  :nombre => 'HIROSHI OGA',
  :cargo => 'Edición y Post Producción',
  :correo => 'hiroshi@lapost-a.com',
  :telefono => '986 270 475',
  :avatar => File.open(File.join(Rails.root, '/public/images/images/img-staff-front.jpg')))

Miembro.create(
  :nombre => 'EDGAR QUISPE',
  :cargo => 'Diseño e Ilustración',
  :correo => 'edgar@lapost-a.com',
  :telefono => '979 326 152',
  :avatar => File.open(File.join(Rails.root, '/public/images/images/img-staff-front.jpg')))

#############################################################################
# Post Model
#############################################################################
Post.delete_all
Post.new(
  :titulo => 'UN DÍA COMO HOY',
  :tipo => 'Realización',
  :descripcion => 'Microprograma realizado en animación 2D para Cenital S.A.C y RPP.',
  :url_web => 'http://www.google.com',
  :video => 'http://www.youtube.com/watch?v=tEH6qKhQ8G8&feature=g-logo-xit',
  :created_at => '28 Ago 2012',
  :foto => File.open(File.join(Rails.root, '/public/images/images/img-posts-front.jpg'))
).save(false)
Post.new(
  :titulo => 'HUNGRY HOUR',
  :tipo => 'Realización',
  :descripcion => 'Diseño gráfico de banners, banderolas e individuales para Café Café.',
  :url_web => 'http://www.google.com',
  :video => 'http://www.youtube.com/watch?v=tEH6qKhQ8G8&feature=g-logo-xit',
  :created_at => '02 Feb 2011',
  :foto => File.open(File.join(Rails.root, '/public/images/images/img-posts-front.jpg'))
).save(false)
Post.new(
  :titulo => 'HUNGRY HOUR',
  :tipo => 'Animación y Post',
  :descripcion => 'Diseño gráfico de banners, banderolas e individuales para Café Café.',
  :url_web => 'http://www.google.com',
  :video => 'http://www.youtube.com/watch?v=tEH6qKhQ8G8&feature=g-logo-xit',
  :created_at => '02 Feb 2011',
  :foto => File.open(File.join(Rails.root, '/public/seed-tests/garden-1.jpg'))
).save(false)
Post.new(
  :titulo => 'Mejor Video',
  :tipo => 'Diseño y Web',
  :descripcion => 'Diseño gráfico de banners, banderolas e individuales para Café Café.',
  :url_web => 'http://www.google.com',
  :video => 'http://www.youtube.com/watch?v=tEH6qKhQ8G8&feature=g-logo-xit',
  :created_at => '02 Feb 2011',
  :foto => File.open(File.join(Rails.root, '/public/seed-tests/garden-2.jpg'))
).save(false)
Post.new(
  :titulo => 'FULBITO DE MESA',
  :tipo => 'Realización',
  :descripcion => 'Diseño gráfico de banners, banderolas e individuales para Café Café.',
  :url_web => 'http://www.google.com',
  :video => 'http://www.youtube.com/watch?v=tEH6qKhQ8G8&feature=g-logo-xit',
  :created_at => '02 Feb 2011',
  :foto => File.open(File.join(Rails.root, '/public/seed-tests/garden-3.jpg'))
).save(false)
Post.new(
  :titulo => 'MEJOR GOL DEL AÑO',
  :tipo => 'Realización',
  :descripcion => 'Diseño gráfico de banners, banderolas e individuales para Café Café.',
  :url_web => 'http://www.google.com',
  :video => 'http://www.youtube.com/watch?v=tEH6qKhQ8G8&feature=g-logo-xit',
  :created_at => '02 Feb 2011',
  :foto => File.open(File.join(Rails.root, '/public/images/images/img-posts-front.jpg'))
).save(false)
