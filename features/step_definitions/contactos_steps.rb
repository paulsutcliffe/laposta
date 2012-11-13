Dado /^que existe un mensaje de "(.*?)"$/ do |nombre|
  Contacto.new(:nombre => nombre, :email => "paul@kosmyka.com", :mensaje => "Hola, este mensaje significa que estoy corriendo un test de aceptación en cucumber del app para la web de La Post-a.").save!
end

Cuando /^lleno los campos del formulario con mis datos$/ do
  fill_in("Nombre/Empresa", :with => "Paul Sutcliffe")
  fill_in("E-mail", :with => "paul@kosmyka.com")
  fill_in("Mensaje", :with => "Hola, este mensaje significa que estoy corriendo un test de aceptación en cucumber del app para la web de La Post-a.")
end
