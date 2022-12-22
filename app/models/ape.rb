class Ape < ApplicationRecord
  self.table_name = "ape"

  # Set primary key
  self.primary_key = "id"

  # Set default order
  default_scope { order(created_at: :desc) }

  # Validate presence of required fields
  validates :user_id, presence: true
  validates :color, presence: true

  # Set up associations
  belongs_to :user
  has_many :awards, foreign_key: "ape_id"
end
