class AddUserAttributesToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :user_attributes, :string
  end

  def self.down
    remove_column :users, :user_attributes
  end
end