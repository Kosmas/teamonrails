class PlayersController < ApplicationController

  active_scaffold :player do |config|
    # The columns here are displayed in the list 
    config.list.columns = [:first_name, :surname, :shirt_no, :stats]
    # What columns to include in the new and update actions
    config.create.columns = [:first_name, :surname, :shirt_no, :team]
    config.update.columns = [:first_name, :surname, :shirt_no, :team]
    # Set the team drop down
    config.columns[:team].form_ui = :select
  end

end