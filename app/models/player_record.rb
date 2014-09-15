class PlayerRecord < ActiveRecord::Base
  belongs_to :player
  attr_accessible :records,:player_id
end
