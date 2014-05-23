class Student < ActiveRecord::Base
	has_many :projects
	has_many :home_works_students
	has_many :home_works, through: :home_works_students

	validates_associated :projects
    validates :name, :email, presence: true
    validates :age, numericality: { only_integer: true, greater_than: 18 }
    validates :email, confirmation: true, uniqueness: true

	scope :names, -> { pluck :name }

	accepts_nested_attributes_for :projects
end
