class TeamsController < ApplicationController

  active_scaffold :team do |config|
    # The columns here are displayed in the list 
    config.list.columns = [:name, :players, :division, :season, :game_day, :game_time, :kit_a, :kit_b, :address, :directions, :url, :created_at, :updated_at]
    # What columns to include in the new and update actions
    config.create.columns = [:name, :game_day, :game_time, :kit_a, :kit_b, :address, :directions, :url, :division, :season]
    config.update.columns = [:name, :game_day, :game_time, :kit_a, :kit_b, :address, :directions, :url, :division, :season]
    # Set inplace editing
    #config.columns[:phone_no].inplace_edit = true
    #config.columns[:PIN].inplace_edit = true
    # Set the division and season drop down
    config.columns[:division].form_ui = :select
    config.columns[:season].form_ui   = :select
    # Add the calendar
    #config.columns[:override_from].form_ui = :calendar
    #config.columns[:override_to].form_ui = :calendar
  end

end