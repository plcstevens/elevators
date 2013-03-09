class Floor < ActiveRecord::Base
  has_many :elevators
  has_many :users

  attr_accessible :number
end
