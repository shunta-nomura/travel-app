class Memorie < ApplicationRecord
  has_one_attached :image
   belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  validates :prefecture_id, presence: true
  validates :image, presence: true
end
