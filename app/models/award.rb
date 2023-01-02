class Award < ApplicationRecord

  validates :ape_id, presence: true
  belongs_to :ape

end
