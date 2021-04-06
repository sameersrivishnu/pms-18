class Post < ApplicationRecord
	has_many :shared_users, dependent: :destroy
	belongs_to :user
	validates :title, :body, :presence => true 
end
