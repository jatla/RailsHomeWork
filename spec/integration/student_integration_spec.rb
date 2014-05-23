require 'spec_helper'

describe "Student Project Integration" do
  before :each do
    visit new_student_path
    fill_in "Name", with: 'Integ Test User'
    fill_in "Age", with: 20
    fill_in "Email", with: 'integtest@integ.com'
  end
  context "new" do
    it "should validate required fields" do
      click_link_or_button "Create Student"
      page.should have_content "Projects name can't be blank"
      page.should have_content "Projects description can't be blank"
      page.should have_content "Projects github link can't be blank"
    end

    it "should create a project as part of student" do
      project_count = Project.count
      fill_in "Name", with: 'Integ Test Project'
      fill_in "Description", with: 'This is integ test project'
      fill_in "Github link", with: 'integ/test/project'
      click_link_or_button "Create Student"
      Project.count.should eq project_count+1
    end 
  end
end