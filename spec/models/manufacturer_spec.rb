require 'rails_helper'

describe Manufacturer, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:cars) }
  end
end
