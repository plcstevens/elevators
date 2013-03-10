class ElevatorSystem < ActiveRecord::Base
  has_many :elevators

  def to_s
    "Elevator System"
  end
end
