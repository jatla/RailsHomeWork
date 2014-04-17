require 'spec_helper'

describe "home_works/edit" do
  before(:each) do
    @home_work = assign(:home_work, stub_model(HomeWork,
      :week => "MyString",
      :difficulty_level => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit home_work form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", home_work_path(@home_work), "post" do
      assert_select "input#home_work_week[name=?]", "home_work[week]"
      assert_select "input#home_work_difficulty_level[name=?]", "home_work[difficulty_level]"
      assert_select "textarea#home_work_description[name=?]", "home_work[description]"
    end
  end
end
