class Team < ActiveRecord::Base

  belongs_to  :division
  belongs_to  :season
  has_many    :players

end