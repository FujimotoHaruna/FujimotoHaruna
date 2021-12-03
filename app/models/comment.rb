class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  mount_uploader :photo, ImageUploader

end
