class User < ApplicationRecord
  self.table_name = "user"

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Set primary key
  self.primary_key = "id"

  # Set default order
  default_scope { order(created_at: :desc) }

  # Validate presence of required fields
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true

  # Set unique constraint on email field
  validates :email, uniqueness: true
end
