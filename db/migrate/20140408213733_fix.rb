class Fix < ActiveRecord::Migration
  def change
    remove_column :votes, :order, :integer
    add_column :links, :order, :integer
  end
end
