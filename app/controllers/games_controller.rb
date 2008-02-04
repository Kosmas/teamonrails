class GamesController < ApplicationController

  active_scaffold :game do |config|
    # The columns here are displayed in the list 
    config.list.columns = [:teamh, :teama, :date_played, :FTH, :FTA, :stats, :created_at, :updated_at]
    # What columns to include in the new and update actions
    config.create.columns = [:teamh, :teama, :date_played, :Q1H, :Q1A, :Q2H, :Q2A, :Q3H, :Q3A, :Q4H, :Q4A, :E1H, :E1A, :E2H, :E2A, :E3H, :E3A, :FTH, :FTA]
    config.update.columns = [:teamh, :teama, :date_played, :Q1H, :Q1A, :Q2H, :Q2A, :Q3H, :Q3A, :Q4H, :Q4A, :E1H, :E1A, :E2H, :E2A, :E3H, :E3A, :FTH, :FTA]
    # Set inplace editing
    #config.columns[:phone_no].inplace_edit = true
    #config.columns[:PIN].inplace_edit = true
    # Set the teams drop down
    config.columns[:teamh].form_ui = :select
    config.columns[:teama].form_ui = :select
    # Add the calendar
    #config.columns[:override_from].form_ui = :calendar
    #config.columns[:override_to].form_ui = :calendar
  end

end