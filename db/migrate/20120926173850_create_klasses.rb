class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.integer :school_id, :null => false
      t.string :name
    end
    add_index :klasses, :school_id
  end
end
