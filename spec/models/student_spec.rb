require 'spec_helper'

describe Student do
  let(:student) { Student.new() }

  context "validate student name" do
	it "student without a name is invalid" do
		student.email = "monk@monk.com"
		student.age = 19
     	expect(student.valid?).to be_false
    end

    it "student with a name is valid" do
    	student.name = "Adrian Monk"
		student.email = "monk@monk.com"
		student.age = 19
     	expect(student.valid?).to be_true
    end
  end

  context "validate student age" do
	it "student without age is invalid" do
    	student.name = "Adrian Monk"
		student.email = "monk@monk.com"
     	expect(student.valid?).to be_false
    end

	it "student with age = 18 is invalid" do
    	student.name = "Adrian Monk"
		student.email = "monk@monk.com"
		student.age = 18
     	expect(student.valid?).to be_false
    end

    it "student with age > 18 is valid" do
    	student.name = "Adrian Monk"
		student.email = "monk@monk.com"
		student.age = 19
     	expect(student.valid?).to be_true
    end
  end

  context "validate student email" do
	it "student without email is invalid" do
    	student.name = "Adrian Monk"
		student.age = 19
     	expect(student.valid?).to be_false
    end

    it "student with email is valid" do
    	student.name = "Adrian Monk"
		student.email = "monk@monk.com"
		student.age = 19
     	expect(student.valid?).to be_true
    end
  end
end
