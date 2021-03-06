require 'spec_helper'

describe "locations/new" do
  before(:each) do
    assign(:location, stub_model(Location,
      :space_id => 1,
      :address => "MyString",
      :longitude => 1.5,
      :latitude => 1.5
    ).as_new_record)
  end

  it "renders new location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", locations_path, "post" do
      assert_select "input#location_space_id[name=?]", "location[space_id]"
      assert_select "input#location_address[name=?]", "location[address]"
      assert_select "input#location_longitude[name=?]", "location[longitude]"
      assert_select "input#location_latitude[name=?]", "location[latitude]"
    end
  end
end
