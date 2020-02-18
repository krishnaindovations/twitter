class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :content
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :tweets, [:user_id, :created_at]
  end
end
