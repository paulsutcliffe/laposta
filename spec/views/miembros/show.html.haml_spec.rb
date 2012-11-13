require 'spec_helper'

describe "miembros/show" do
  before(:each) do
    @miembro = assign(:miembro, stub_model(Miembro,
      :nombre => "Nombre",
      :correo => "Correo",
      :telefono => "Telefono"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/Correo/)
    rendered.should match(/Telefono/)
  end
end
