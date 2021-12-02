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

  def self.category
    ["Antiques", "Collage", "Contemporary", "Drawing", "Installation", "Mixed Medium", "Painting", "Photography", "Sculpture"]
  end

  def self.status
    ["Sale", "Auction"]
  end

  # def self.starting_price
  #   ["€1 - €250", "€251 - €500", "500 + "]
  # end
end
