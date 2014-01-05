require 'spec_helper'

describe "materials/index" do
  before(:each) do
    assign(:materials, [
      stub_model(Material,
        :name => "Name",
        :image => "Image",
        :video => "Video"
      ),
      stub_model(Material,
        :name => "Name",
        :image => "Image",
        :video => "Video"
      )
    ])
  end

  it "renders a list of materials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Video".to_s, :count => 2
  end
end
