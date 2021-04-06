class SharedUser < ApplicationRecord
	belongs_to :user
	belongs_to :post
end
