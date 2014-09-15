class Player < ActiveRecord::Base
  attr_accessible :age, :country, :dob, :name, :type_of_sport
end
