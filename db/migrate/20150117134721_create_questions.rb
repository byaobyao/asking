class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :text
      t.integer :position
      t.belongs_to :test, index: true

      t.timestamps null: false
    end
    add_foreign_key :questions, :tests
  end
end
