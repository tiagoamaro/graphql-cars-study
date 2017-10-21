class Price < ApplicationRecord
  belongs_to :version
  belongs_to :reference_table
end
