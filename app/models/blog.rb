class Blog < ApplicationRecord
  validates :title, presence: true,length: { maximum: 50 }
  validates :content, presence: true,length: { maximum: 600 }
  belongs_to :user
  mount_uploader :image, ImageUploader
end
