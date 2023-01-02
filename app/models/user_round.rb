class UserRound < ApplicationRecord

  validates :user_id, presence: true
  validates :round_id, presence: true
  validates :score, presence: true
  validates :banana_count, presence: true
  belongs_to :user
  belongs_to :round
end
