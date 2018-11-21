class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian french belgian japanese].freeze
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: Restaurant::CATEGORIES }
end
