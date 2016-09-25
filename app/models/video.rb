class Video < ApplicationRecord
  has_many :civilian_videos
  has_many :civilians, through: :civilian_videos
  has_many :cop_videos
  has_many :cops, through: :cop_videos
  has_many :details
end
