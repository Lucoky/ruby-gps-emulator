class Route < ApplicationRecord
  belongs_to :gps
  has_many :route_positions, dependent: :destroy

  def mark_as_emulated
    update(emulated: true)
  end

  scope :to_be_emulated, -> { where(emulated: false) }
end
