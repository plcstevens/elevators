class CreateFloors < ActiveRecord::Migration
  def change
    create_table :floors do |t|
      t.integer :number

      t.timestamps
    end
  end
end
