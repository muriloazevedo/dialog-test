require_relative 'queries/users_query.rb'
require_relative 'queries/friendships_query.rb'

class User < ApplicationRecord
  has_many :friendships,
    ->(user) { FriendshipsQuery.both_ways(user_id: user.id) },
    inverse_of: :user,
    dependent: :destroy
  has_many :friends,
    ->(user) { UsersQuery.friends(user_id: user.id, scope: true) },
    through: :friendships

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :name, :email, :age, presence: true
end
