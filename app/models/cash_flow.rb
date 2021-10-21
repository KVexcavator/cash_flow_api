class CashFlow < ApplicationRecord
  validates :title, :user_id, :price, presence: true
  belongs_to :user
end
