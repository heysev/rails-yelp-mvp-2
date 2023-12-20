class Restaurant < ApplicationRecord
  has_many :review, dependent: :destroy

  validates :name, :address, :phone, :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }
end
