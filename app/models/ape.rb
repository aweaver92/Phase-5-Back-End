class Ape < ApplicationRecord
  validates :user_id, presence: true
  validates :color, presence: true

  belongs_to :user
  has_many :awards, foreign_key: "ape_id"
end
