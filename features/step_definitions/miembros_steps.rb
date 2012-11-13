Dado /^que existe el miembro "(.*?)"$/ do |nombre|
  Miembro.new(:nombre => nombre,
              :correo => "walter@lapost-a.com",
              :cargo => "Editor",
              :telefono => "998355383",
              :avatar => File.new("features/support/miembro.jpg", "r")).save!
end

Entonces /^no debería ver "(.*?)"$/ do |resultado|
  page.should have_no_content(resultado)
end

Entonces /^no debería ver los controles de administración$/ do
  page.should have_no_content("Editar")
  page.should have_no_content("Eliminar")
  page.should have_no_content("Nuevo")
end
