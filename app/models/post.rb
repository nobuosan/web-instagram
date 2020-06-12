class Post < ApplicationRecord
  belongs_to :user

  has_many :photos, dependent: :destroy
  # postを通してphotosを保存する
  accepts_nested_attributes_for :photos
end
