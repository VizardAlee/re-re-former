class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
