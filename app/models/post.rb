class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy


  has_many :photos, dependent: :destroy
  # postを通してphotosを保存する
  accepts_nested_attributes_for :photos
end
