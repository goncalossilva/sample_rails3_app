class CreateChildren < ActiveRecord::Migration
  def self.up
    create_table :children do |t|
      t.string :name
      t.integer :age
      t.references :parent

      t.timestamps
    end
  end

  def self.down
    drop_table :children
  end
end
