class UserRound < ApplicationRecord
  self.table_name = "user_round"

  # Set primary key
  self.primary_key = "id"

  # Set default order
  default_scope { order(created_at: :desc) }

  # Validate presence of required fields
  validates :user_id, presence: true
  validates :round_id, presence: true
  validates :score, presence: true
  validates :banana_count, presence: true

  # Set up associations
  belongs_to :user
  belongs_to :round
end
