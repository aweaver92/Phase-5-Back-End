class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true

  PASSWORD_REQUIREMENTS = /\A
    (?=.{7,}) # at least 7 characters long
  /x

  validates :password, presence: true, format: PASSWORD_REQUIREMENTS

  validates :email, uniqueness: true
end
