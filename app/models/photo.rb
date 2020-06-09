class Photo < ApplicationRecord
  belongs_to :post

  validates :image, presence: true

  # ファイル投稿機能gemの　imagae_uploader.rbとの紐付け
  mount_uploader :image, ImageUploader

end
