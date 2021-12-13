class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    enable_extension 'pgcrypto'
    create_table :users, id: :uuid do |t|
      t.integer :index, index: true
      t.string :picture
      t.integer :age
      t.string :eye_color
      t.string :name
      t.string :company
      t.string :email, index: { unique: true }
      t.string :phone
      t.string :greeting
      t.timestamps
    end
  end
end
