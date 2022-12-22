class Award < ApplicationRecord
  self.table_name = "award"

  # Set primary key
  self.primary_key = "id"

  # Set default order
  default_scope { order(created_at: :desc) }

  # Validate presence of required fields
  validates :ape_id, presence: true

  # Set up associations
  belongs_to :ape
end
