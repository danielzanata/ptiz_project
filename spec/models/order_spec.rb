require 'rails_helper'
RSpec.describe Order, type: :model do

  let(:user) { FactoryBot.create(:user) }
  
  describe 'validates presence_of' do
    it { is_expected.to validate_presence_of(:user_device) }
    it { is_expected.to validate_presence_of(:imei_device) }
    it { is_expected.to validate_presence_of(:annual_price) }
    it { is_expected.to validate_presence_of(:user) }
  end

  describe "Create Order" do
    it "Sucesso" do
      expect(FactoryBot.create(:order).valid?).to eq(true)
    end
  end

end