class Post < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  accepts_nested_attributes_for :photos

  # ==========ここから追加する==========
  def liked_by(current_user)
    # user_idとpost_idが一致するlikeを検索する
    Like.find_by(user_id: current_user.id, post_id: id)
    Like.find_by(user_id: user.id, post_id: id)
  end
end
