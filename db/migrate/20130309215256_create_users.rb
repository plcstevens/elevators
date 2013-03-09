class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.references :floor
      t.references :elevator

      t.timestamps
    end
    add_index :users, :floor_id
    add_index :users, :elevator_id
  end
end
