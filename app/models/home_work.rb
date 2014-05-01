class HomeWork < ActiveRecord::Base
	has_many :home_works_students
	has_many :students, through: :home_works_students
end
