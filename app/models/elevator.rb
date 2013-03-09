class Elevator < ActiveRecord::Base
  belongs_to :elevator_system
  belongs_to :floor

  has_many :users
end
