class CreateGrandParents < ActiveRecord::Migration
  def self.up
    create_table :grand_parents do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end

  def self.down
    drop_table :grand_parents
  end
end
