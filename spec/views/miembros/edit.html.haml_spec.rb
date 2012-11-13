require 'spec_helper'

describe "miembros/edit" do
  before(:each) do
    @miembro = assign(:miembro, stub_model(Miembro,
      :nombre => "MyString",
      :correo => "MyString",
      :telefono => "MyString"
    ))
  end

  it "renders the edit miembro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => miembros_path(@miembro), :method => "post" do
      assert_select "input#miembro_nombre", :name => "miembro[nombre]"
      assert_select "input#miembro_correo", :name => "miembro[correo]"
      assert_select "input#miembro_telefono", :name => "miembro[telefono]"
    end
  end
end
