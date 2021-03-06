require 'spec_helper'

describe "materials/edit" do
  before(:each) do
    @material = assign(:material, stub_model(Material,
      :name => "MyString",
      :image => "MyString",
      :video => "MyString"
    ))
  end

  it "renders the edit material form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", material_path(@material), "post" do
      assert_select "input#material_name[name=?]", "material[name]"
      assert_select "input#material_image[name=?]", "material[image]"
      assert_select "input#material_video[name=?]", "material[video]"
    end
  end
end
