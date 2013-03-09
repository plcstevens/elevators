class CreateElevatorSystems < ActiveRecord::Migration
  def change
    create_table :elevator_systems do |t|

      t.timestamps
    end
  end
end
