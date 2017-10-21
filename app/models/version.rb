class Version < ApplicationRecord
  belongs_to :car
  has_many :prices
end
