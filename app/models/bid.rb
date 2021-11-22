class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :art

  validates :amount, presence: true
end
