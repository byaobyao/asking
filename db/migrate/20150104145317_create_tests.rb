class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.integer :discipline_id
      t.integer :grade

      t.timestamps null: false
    end

    add_index :tests, [:discipline_id]
  end
end
