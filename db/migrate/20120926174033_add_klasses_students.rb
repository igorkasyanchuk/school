class AddKlassesStudents < ActiveRecord::Migration
  def change
    create_table :klasses_students do |t|
      t.integer :klass_id, :null => false
      t.integer :student_id, :null => false
      t.integer :position, :default => 0
    end
    add_index :klasses_students, :klass_id
    add_index :klasses_students, :student_id
  end
end
