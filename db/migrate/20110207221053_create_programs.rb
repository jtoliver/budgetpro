class CreatePrograms < ActiveRecord::Migration
  def self.up
    create_table :programs do |t|
      t.string :dept
      t.string :fund
      t.string :program
      t.string :priority
      t.string :prog_status
      t.text :purpose
      t.text :desc
      t.string :link
      t.references :user

      t.timestamps
    end

    add_index :programs, :user_id
  end

  def self.down
    drop_table :programs
  end
end
