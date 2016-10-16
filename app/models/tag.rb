class Tag < ApplicationRecord
	has_many :taggings
	has_many :articles, through: :taggings

	def to_s
		name
	end

	def show
		@tag = Tag.find(params[:id])
	end
end
