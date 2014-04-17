require 'spec_helper'

describe "home_works/index" do
  before(:each) do
    assign(:home_works, [
      stub_model(HomeWork,
        :week => "Week",
        :difficulty_level => "Difficulty Level",
        :description => "MyText"
      ),
      stub_model(HomeWork,
        :week => "Week",
        :difficulty_level => "Difficulty Level",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of home_works" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Week".to_s, :count => 2
    assert_select "tr>td", :text => "Difficulty Level".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
