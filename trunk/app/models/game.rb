class Game < ActiveRecord::Base

  belongs_to  :teamh
  belongs_to  :teama
  has_many    :stats
  has_many    :players, :through => :stats

  def to_label
    "#{teamh.name} - #{teama.name}"
  end

end