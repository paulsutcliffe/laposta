Cuando /^selecciono "(.*?)" en "(.*?)"$/ do |value, locator|
  select(value, {:from => locator})
end

Entonces /^debería ver el video "(.*?)"$/ do |video|
   wait_until(30) do
    page.should have_xpath("//iframe[@src=#{video}")
  end
end

Dado /^que existe el post "(.*?)"$/ do |titulo|
  Post.new(:titulo => titulo, :tipo => "Diseño y Web", :descripcion => "Resumen acerca de que se trata el post Lain Adelgaza", :url_web => "www.lainadelgaza.net", :foto => File.new("features/support/post.jpg", "r")).save!
end
