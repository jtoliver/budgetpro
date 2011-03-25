class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :obj_code
      t.text :details
      t.string :amount
      t.references :program
      
      t.timestamps
    end
    
    add_index :items, :program_id
  end

  def self.down
    drop_table :items
  end
end
