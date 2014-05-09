class Project < ActiveRecord::Base
	belongs_to :student

    validates :name, :description, :github_link, presence: true
    validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed" }
end
