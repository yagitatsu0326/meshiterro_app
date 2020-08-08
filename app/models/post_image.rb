class PostImage < ApplicationRecord

	belongs_to :user
	attachment :image
	has_many :post_comments, dependent: :destroy
	has_many :favprites, dependent: :destroy

	def favorited_by?(user)
		favorites.where(user_id: user.id).exixts?
	end

end
