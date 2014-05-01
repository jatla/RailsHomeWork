class Student < ActiveRecord::Base
	has_many :projects
	has_many :home_works_students
	has_many :home_works, through: :home_works_students

	scope :names, -> { pluck :name }
end
