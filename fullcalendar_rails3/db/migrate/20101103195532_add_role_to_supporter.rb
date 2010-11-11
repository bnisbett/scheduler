class AddRoleToSupporter < ActiveRecord::Migration
  def self.up
    add_column :supporters, :role, :string
  end

  def self.down
    remove_column :supporters, :role
  end
end
