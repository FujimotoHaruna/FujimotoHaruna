class Post < ApplicationRecord

    belongs_to :user

    has_many :favorites, dependent: :destroy
    has_many :favorited_users, through: :favorites, source: :user
    has_many :responses, dependent: :destroy
    
    mount_uploader :picture, PictureUploader

end
