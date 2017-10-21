require 'rails_helper'

describe Car, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:manufacturer) }
    it { is_expected.to have_many(:versions) }
  end
end
