class Ticket < ApplicationRecord
  belongs_to :event
  has_many :user_tickets
  has_many :users, through: :user_tickets
  validates_numericality_of :price
  validates :price, numericality: {greater_than: 0}

end
