class ChangeScoreToFloat < ActiveRecord::Migration
  def self.up
    change_column :tweets, :score, :float
  end

  def self.down
    change_column :tweets, :score, :integer
  end
end
