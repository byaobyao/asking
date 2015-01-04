class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :second_name
      t.string :third_name

      t.timestamps null: false
    end

    create_table :disciplines_teachers, id: false do |t|
      t.integer :discipline_id
      t.integer :teacher_id
    end

    add_index :disciplines_teachers, [:discipline_id, :teacher_id]
  end
end
