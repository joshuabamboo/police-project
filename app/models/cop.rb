class Cop < ApplicationRecord
  has_many :cop_videos
  has_many :videos, through: :cop_videos
end
