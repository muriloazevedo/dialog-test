class CreateFriendships < ActiveRecord::Migration[6.1]
  def change
    create_table :friendships do |t|
      t.uuid :user_id
      t.uuid :friend_id
      t.timestamps
    end

    add_foreign_key :friendships, :users, column: :user_id
    add_foreign_key :friendships, :users, column: :friend_id
  end
end
