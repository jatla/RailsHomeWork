require 'spec_helper'

describe "students/edit" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :name => "MyString",
      :age => 1,
      :email => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", student_path(@student), "post" do
      assert_select "input#student_name[name=?]", "student[name]"
      assert_select "input#student_age[name=?]", "student[age]"
      assert_select "input#student_email[name=?]", "student[email]"
    end
  end
end
