require 'spec_helper'

describe "miembros/new" do
  before(:each) do
    assign(:miembro, stub_model(Miembro,
      :nombre => "MyString",
      :correo => "MyString",
      :telefono => "MyString"
    ).as_new_record)
  end

  it "renders new miembro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => miembros_path, :method => "post" do
      assert_select "input#miembro_nombre", :name => "miembro[nombre]"
      assert_select "input#miembro_correo", :name => "miembro[correo]"
      assert_select "input#miembro_telefono", :name => "miembro[telefono]"
    end
  end
end
