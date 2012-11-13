require 'spec_helper'

describe "miembros/index" do
  before(:each) do
    assign(:miembros, [
      stub_model(Miembro,
        :nombre => "Nombre",
        :correo => "Correo",
        :telefono => "Telefono"
      ),
      stub_model(Miembro,
        :nombre => "Nombre",
        :correo => "Correo",
        :telefono => "Telefono"
      )
    ])
  end

  it "renders a list of miembros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Correo".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
  end
end
