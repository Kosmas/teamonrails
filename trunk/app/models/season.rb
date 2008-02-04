class Season < ActiveRecord::Base

  has_many    :teams

  def to_label
    "#{description}"
  end

end