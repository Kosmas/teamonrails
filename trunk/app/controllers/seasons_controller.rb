class SeasonsController < ApplicationController

  active_scaffold :season do |config|
    # The columns here are displayed in the list 
    config.list.columns = [:description, :created_at, :updated_at]
    # What columns to include in the new and update actions
    config.create.columns = [:description]
    config.update.columns = [:description]
    # Set fields descriptions
    config.columns[:description].label = "Season"
  end

end