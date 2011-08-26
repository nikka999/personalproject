class AddInformationToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :information, :text
  end

  def self.down
    remove_column :users, :information
  end
end
