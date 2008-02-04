class StatsController < ApplicationController

  active_scaffold :stats do |config|
    # The columns here are displayed in the list 
    config.list.columns = [:game, :player, :PS_1, :PM_1, :PS_2, :PS_3, :Fouls_Com, :created_at, :updated_at]
    # What columns to include in the new and update actions
    config.create.columns = [:PS_1, :PM_1, :PS_2, :PS_3, :Fouls_Com, :game, :player]
    config.update.columns = [:PS_1, :PM_1, :PS_2, :PS_3, :Fouls_Com, :game, :player]
    # Set fields descriptions
    config.columns[:PS_1].label       = "Free Throws Scored"
    config.columns[:PM_1].label       = "Free Throws Missed"
    config.columns[:PS_2].label       = "2 point shots made"
    config.columns[:PS_3].label       = "3 point shots made"
    config.columns[:Fouls_Com].label  = "Fouls commited"

    # Set the team and player drop down
    config.columns[:game].form_ui   = :select
    config.columns[:player].form_ui = :select
  end

end