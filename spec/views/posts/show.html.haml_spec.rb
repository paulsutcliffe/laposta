require 'spec_helper'

describe "posts/show" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :titulo => "Titulo",
      :tipo => "Tipo",
      :descripcion => "MyText",
      :url_web => "Url Web",
      :video => "Video"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titulo/)
    rendered.should match(/Tipo/)
    rendered.should match(/MyText/)
    rendered.should match(/Url Web/)
    rendered.should match(/Video/)
  end
end
