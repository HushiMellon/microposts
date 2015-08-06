class AddAreaToUser < ActiveRecord::Migration
  def change
    add_column :users, :area, :strings
    add_column :users, :profile, :strings
  end
end
