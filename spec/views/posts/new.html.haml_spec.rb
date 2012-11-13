require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :titulo => "MyString",
      :tipo => "MyString",
      :descripcion => "MyText",
      :url_web => "MyString",
      :video => "MyString"
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path, :method => "post" do
      assert_select "input#post_titulo", :name => "post[titulo]"
      assert_select "input#post_tipo", :name => "post[tipo]"
      assert_select "textarea#post_descripcion", :name => "post[descripcion]"
      assert_select "input#post_url_web", :name => "post[url_web]"
      assert_select "input#post_video", :name => "post[video]"
    end
  end
end
