class AddPasswordToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :login, :string
    add_column :teachers, :password_digest, :string
  end
end