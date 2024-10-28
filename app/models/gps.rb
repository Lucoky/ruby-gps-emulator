class Gps < ApplicationRecord
  has_many :gps_frame_sents, dependent: :destroy
  has_many :routes, dependent: :destroy
end
