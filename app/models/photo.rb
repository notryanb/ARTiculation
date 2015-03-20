class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :photo_tags
  has_many :tags, through: :photo_tags
end
