class Elevator < ActiveRecord::Base
  belongs_to :elevator_system
  belongs_to :floor

  has_many :users

  before_save :default_values

  attr_accessible :floor

  private

  def default_values
    self.elevator_system ||= ElevatorSystem.first
    self.floor           ||= Floor.where(number: 1).first
  end
end
