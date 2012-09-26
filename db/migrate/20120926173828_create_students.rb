class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :school_id, :null => false
      t.string :name
    end
    add_index :students, :school_id
  end
end
