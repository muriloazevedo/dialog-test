# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Users::Index do
  context 'find user' do
    let!(:user) { create(:user) }
    let!(:user_2) { create(:user_friend) }
    let!(:friendship) { create(:friendship, user: user, friend: user_2 ) }

    it 'given id' do
      user_found = Users::Show.new({id: user.id}).call
      expect(user_found.email).to eq(user.email)
      expect(user.friends.count).to eq 1
    end
  end
end