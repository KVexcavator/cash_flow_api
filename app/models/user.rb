class User < ApplicationRecord
  validates :nikname, uniqueness: true
end
