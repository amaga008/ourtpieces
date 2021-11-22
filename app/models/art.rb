class Art < ApplicationRecord
  has_many :transactions
  has_many :bids
  belongs_to :user
  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :starting_price, presence: true
  validates :category, presence: true

  # We need to see how validation will work out with the auctions part
end
