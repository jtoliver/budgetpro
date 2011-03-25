class CreateFunds < ActiveRecord::Migration
  def self.up
    create_table :funds do |t|
      t.integer    :id
      t.string      :account
      t.string      :program
      t.timestamps
    end
  end

  def self.down
    drop_table :funds
  end
end
