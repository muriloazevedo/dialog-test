require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'relations' do
    it { is_expected.to have_many(:friendships) }
    it { is_expected.to have_many(:friends).through(:friendships) }
  end

  context 'validations' do
    let!(:user_created) { create(:user) }

    it 'error with no params' do
      user = User.new
      user.valid?
      expect(user.errors.count).not_to eq(0)
    end

    it "should validate uniqueness of email" do
      user = User.new(name: "John", email: user_created.email, age: '29')
      user.valid?
      expect(user.errors).to include(:email)
    end
  end
end
