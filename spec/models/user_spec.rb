require 'rails_helper'
RSpec.describe User, type: :model do

  describe 'validates presence_of' do
    it { is_expected.to validate_presence_of(:cpf) }
  end

  describe 'validates uniqueness_of' do
    it { is_expected.to validate_uniqueness_of(:cpf) }
  end

  describe "Create User" do
    it "Sucesso" do
      expect(FactoryBot.create(:user).valid?).to eq(true)
    end
  end

end