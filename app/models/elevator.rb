class Elevator < ActiveRecord::Base
  belongs_to :elevator_system
  belongs_to :floor

  has_many :users

  before_save :default_values

  attr_accessible :floor

  validates :floor, presence: true

  private

  # could be set in database, but by setting here we permit ourselves to change this in the future.
  def default_values
    # always uses the same elevator system
    self.elevator_system ||= ElevatorSystem.first
    # always starts on the first floor
    self.floor           ||= Floor.where(number: 1).first
  end
end
