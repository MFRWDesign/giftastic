class Gif < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :image, size: { less_than: 1.megabyte , message: 'is not less than 1MB' }
end
