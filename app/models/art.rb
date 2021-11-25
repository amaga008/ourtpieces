class Art < ApplicationRecord
  has_many :transactions
  has_many :bids
  has_one_attached :photo
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :starting_price, presence: true
  validates :category, presence: true
  validates :measurements, presence: true
end
