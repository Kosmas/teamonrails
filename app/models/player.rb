class Player < ActiveRecord::Base

  belongs_to    :team
  has_many      :stats
  has_many      :games, :through => :stats

  def to_label
    "#{first_name} #{surname}"
  end

end