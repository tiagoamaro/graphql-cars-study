require 'rails_helper'

describe Version, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:car) }
    it { is_expected.to have_many(:prices) }
  end
end
