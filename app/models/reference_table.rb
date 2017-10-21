class ReferenceTable < ApplicationRecord
  belongs_to :manufacturer
  has_many :versions
end
