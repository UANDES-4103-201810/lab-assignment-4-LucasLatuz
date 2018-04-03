class Place < ApplicationRecord
	has_many :events
	validates :name, length: { minimum: 20 }
	validates_numericality_of :capacity
	validates :capacity, numericality: {greater_than: 0}
end
