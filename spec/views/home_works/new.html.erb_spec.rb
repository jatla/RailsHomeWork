require 'spec_helper'

describe "home_works/new" do
  before(:each) do
    assign(:home_work, stub_model(HomeWork,
      :week => "MyString",
      :difficulty_level => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new home_work form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", home_works_path, "post" do
      assert_select "input#home_work_week[name=?]", "home_work[week]"
      assert_select "input#home_work_difficulty_level[name=?]", "home_work[difficulty_level]"
      assert_select "textarea#home_work_description[name=?]", "home_work[description]"
    end
  end
end
