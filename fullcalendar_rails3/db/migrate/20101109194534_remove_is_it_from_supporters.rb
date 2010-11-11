class RemoveIsItFromSupporters < ActiveRecord::Migration
  def self.up
    remove_column :supporters, :isIT
  end

  def self.down
    add_column :supporters, :isIT, :boolean
  end
end
