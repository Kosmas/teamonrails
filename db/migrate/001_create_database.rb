class CreateDatabase < ActiveRecord::Migration
  def self.up
    # Create season table
    create_table  :seasons do |t|
      t.column    :description, :string, :null => false
      t.column    :created_at, :datetime
      t.column    :updated_at, :datetime
    end

    # Create division table
    create_table  :divisions do |t|
      t.column    :description, :string, :null => false
      t.column    :created_at, :datetime
      t.column    :updated_at, :datetime
    end

    # Create team table
    create_table  :teams do |t|
      t.column    :name, :string, :null => false
      t.column    :division_id, :integer, :null => false
      t.column    :season_id, :integer, :null => false
      t.column    :game_day, :string
      t.column    :game_time, :time
      t.column    :kit_a, :string
      t.column    :kit_b, :string
      t.column    :address, :string
      t.column    :directions, :string
      t.column    :url, :string
      t.column    :created_at, :datetime
      t.column    :updated_at, :datetime
    end

    # Create Player table
    create_table  :players do |t|
      t.column    :team_id, :int, :null => false
      t.column    :first_name, :string
      t.column    :surname, :string
      t.column    :nickname, :string
      t.column    :shirt_no, :int
      t.column    :dob, :date
      t.column    :address, :string
      t.column    :email, :string
      t.column    :contact_no, :string
      t.column    :created_at, :datetime
      t.column    :updated_at, :datetime
    end

    # Create table Game
    create_table  :games do |t|
      t.column    :home_id, :integer, :null => false
      t.column    :away_id, :integer, :null => false
      t.column    :date_played, :datetime
      t.column    :Q1H, :integer
      t.column    :Q1A, :integer
      t.column    :Q2H, :integer
      t.column    :Q2A, :integer
      t.column    :Q3H, :integer
      t.column    :Q3A, :integer
      t.column    :Q4H, :integer
      t.column    :Q4A, :integer
      t.column    :E1H, :integer
      t.column    :E1A, :integer
      t.column    :E2H, :integer
      t.column    :E2A, :integer
      t.column    :E3H, :integer
      t.column    :E3A, :integer
      t.column    :FTH, :integer
      t.column    :FTA, :integer
      t.column    :created_at, :datetime
      t.column    :updated_at, :datetime
    end

    # Create table PlayerGame
    create_table  :games_players do |t|
      t.column    :game_id, :integer, :null => false
      t.column    :player_id, :integer, :null => false
      t.column    :PS_1, :integer
      t.column    :PM_1, :integer
      t.column    :PS_2, :integer
      t.column    :PM_2, :integer
      t.column    :PS_3, :integer
      t.column    :PM_3, :integer
      t.column    :Min_Played, :integer
      t.column    :Fouls_Com, :integer
      t.column    :Of_Reb, :integer
      t.column    :Def_Reb, :integer
      t.column    :Steals, :integer
      t.column    :Blocks, :integer
      t.column    :Mistakes, :integer
      t.column    :Assists, :integer
      t.column    :created_at, :datetime
      t.column    :updated_at, :datetime
    end
  end

  def self.down
    drop_table  :seasons
    drop_table  :divisions
    drop_table  :teams
    drop_table  :players
    drop_table  :games
    drop_table  :games_players
  end
end
