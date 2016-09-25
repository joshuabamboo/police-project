class Civilian < ApplicationRecord
  has_many :civilian_videos
  has_many :videos, through: :civilian_videos
end
