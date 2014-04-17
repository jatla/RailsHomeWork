require 'spec_helper'

describe "home_works/show" do
  before(:each) do
    @home_work = assign(:home_work, stub_model(HomeWork,
      :week => "Week",
      :difficulty_level => "Difficulty Level",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Week/)
    rendered.should match(/Difficulty Level/)
    rendered.should match(/MyText/)
  end
end
