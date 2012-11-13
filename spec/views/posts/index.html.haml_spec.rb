require 'spec_helper'

describe "posts/index" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :titulo => "Titulo",
        :tipo => "Tipo",
        :descripcion => "MyText",
        :url_web => "Url Web",
        :video => "Video"
      ),
      stub_model(Post,
        :titulo => "Titulo",
        :tipo => "Tipo",
        :descripcion => "MyText",
        :url_web => "Url Web",
        :video => "Video"
      )
    ])
  end

  it "renders a list of posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Url Web".to_s, :count => 2
    assert_select "tr>td", :text => "Video".to_s, :count => 2
  end
end
