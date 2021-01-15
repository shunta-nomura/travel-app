class Memorie < ApplicationRecord
  has_many_attached :images
   belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  validates :prefecture_id, presence: true
  validates :images, presence: true

  
end
