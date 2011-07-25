class AddIdToNumbers < ActiveRecord::Migration
  def self.up
    add_column :numbers, :id, :primary_key
  end

  def self.down
    remove_column :numbers, :id
  end
end
