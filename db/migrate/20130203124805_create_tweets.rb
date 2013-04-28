class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :message
      t.integer :user_id

      t.timestamps
    end

    add_index :tweets, :user_id

  end
end
