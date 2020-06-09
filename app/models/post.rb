class Post < ApplicationRecord
  belongs_to :uesr

  has_many :photos, dependent: :destroy
end
