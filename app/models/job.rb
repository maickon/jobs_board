class Job < ActiveRecord::Base
	belongs_to :category
	belongs_to :user

	validates :category, :presence => true
	validates :user, :presence => true
	validates :title, :description, :company, :url, presence: true
end
