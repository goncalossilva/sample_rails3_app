class CreateParents < ActiveRecord::Migration
  def self.up
    create_table :parents do |t|
      t.string :name
      t.integer :age
      t.references :grand_parent

      t.timestamps
    end
  end

  def self.down
    drop_table :parents
  end
end
