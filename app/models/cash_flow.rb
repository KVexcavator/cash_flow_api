class CashFlow < ApplicationRecord

  validates :title, :user_id, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0}, presence: true

  belongs_to :user
  
  scope :last_week, -> {where('created_at >= ?', Time.now - 1.week)}
end
