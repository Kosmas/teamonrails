class ModifyGames < ActiveRecord::Migration
  def self.up
    rename_column :games, :home_id, :teamh_id
    rename_column :games, :away_id, :teama_id
  end

  def self.down
    rename_column :games, :teamh_id, :home_id
    rename_column :games, :teama_id, :away_id
  end
end
