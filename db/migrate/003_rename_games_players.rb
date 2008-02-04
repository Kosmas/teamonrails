class RenameGamesPlayers < ActiveRecord::Migration
  def self.up
    rename_table  "games_players", "stats"
  end

  def self.down
    rename_table  "stats", "games_players"
  end
end
