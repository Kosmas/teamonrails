class Stat < ActiveRecord::Base
  
  belongs_to  :player
  belongs_to  :game

  def to_label
    "#{game_id}-#{player_id}"
  end

end