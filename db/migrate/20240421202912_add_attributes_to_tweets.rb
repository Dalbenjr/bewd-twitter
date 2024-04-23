class AddAttributesToTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.string :message
      t.integer :user_id, foreign_key: true
      t.timestamps
    end

    add_index :tweets, :user_id 
  end
end
