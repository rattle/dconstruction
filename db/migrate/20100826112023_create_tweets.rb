class CreateTweets < ActiveRecord::Migration
  def self.up
    create_table :tweets do |t|
      t.integer :tid, :default => nil
      t.text :sender, :default => nil
      t.text :body, :default => nil
      t.integer :score, :default => nil

      t.timestamps
    end
    change_column :tweets, :tid, 'bigint'
  end

  def self.down
    drop_table :tweets
  end
end
