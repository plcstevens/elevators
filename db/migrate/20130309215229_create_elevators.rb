class CreateElevators < ActiveRecord::Migration
  def change
    create_table :elevators do |t|
      t.references :elevator_system
      t.references :floor

      t.timestamps
    end
    add_index :elevators, :elevator_system_id
    add_index :elevators, :floor_id
  end
end
