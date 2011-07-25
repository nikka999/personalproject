class CreateNumbers < ActiveRecord::Migration
  def self.up
    create_table :numbers do |t|
      t.integer :calc

      t.timestamps
    end
  end

  def self.down
    drop_table :numbers
  end
end
