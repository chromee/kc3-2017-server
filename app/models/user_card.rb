class UserCard < ApplicationRecord
  validates :user_id,  presence: true
  validates :card_id,  presence: true
end
