class Photo < ActiveRecord::Base
  validates :title, presence: true
  mount_uploader :photo, PhotoUploader
  belongs_to :user
end
