require 'spec_helper'

describe "materials/new" do
  before(:each) do
    assign(:material, stub_model(Material,
      :name => "MyString",
      :image => "MyString",
      :video => "MyString"
    ).as_new_record)
  end

  it "renders new material form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", materials_path, "post" do
      assert_select "input#material_name[name=?]", "material[name]"
      assert_select "input#material_image[name=?]", "material[image]"
      assert_select "input#material_video[name=?]", "material[video]"
    end
  end
end
