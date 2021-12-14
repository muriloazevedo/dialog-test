# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Users::Index do
  context 'list' do
    let!(:user) { create(:user) }
    let!(:user_2) { create(:user_friend) }

    it 'should return 2 results' do 
      users = Users::Index.new.call
      expect(users.pluck(:email)).to include(user.email, user_2.email)
    end

    it 'should return 1 given search paramter' do
      q = 'Andrea'
      users = Users::Index.new({q: q}).call
      expect(users.pluck(:email)).to contain_exactly(user.email)
    end

    it 'should return 0 non existent user' do
      q = 'murilo@gmail.com'
      users = Users::Index.new({q: q}).call
      expect(users.count).to eq 0
    end
  end
end