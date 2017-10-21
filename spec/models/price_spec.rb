require 'rails_helper'

describe Price, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:version) }
    it { is_expected.to belong_to(:reference_table) }
  end
end
