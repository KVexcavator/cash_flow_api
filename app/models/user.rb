class User < ApplicationRecord
  has_many :cash_flows, dependent: :destroy

  validates :nikname, uniqueness: true
end
